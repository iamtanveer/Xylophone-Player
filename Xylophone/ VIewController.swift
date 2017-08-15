
import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    let sounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(senderTag: sounds[sender.tag - 1 ])
        
    }
    
    func playSound(senderTag: String){
        let soundURL = Bundle.main.path(forResource: senderTag, ofType:"wav")!
        let url = URL(fileURLWithPath: soundURL)
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        }catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    
  

}

