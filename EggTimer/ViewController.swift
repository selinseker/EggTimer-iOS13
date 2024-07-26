import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var SecondRemaining = 60
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle
        
        SecondRemaining = eggTimes[hardness!]!
        
       timer =  Timer.scheduledTimer(timeInterval: 1.0 , target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        
        if SecondRemaining > 0{
        
           print("\(SecondRemaining) second.")
           SecondRemaining -= 1
        }
    }

}
