
import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let soundURL = Bundle.main.path(forResource: "note1", ofType:"wav")!
        let url = URL(fileURLWithPath: soundURL)

        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        }catch{
            print(error)
        }
        
        audioPlayer.play()
        
        
    }
    
  

}

