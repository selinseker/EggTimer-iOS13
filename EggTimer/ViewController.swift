import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var totalTime = 0
    var secondPassed = 0
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        titleLabel.text = "How do you like your eggs?"
        
        let hardness = sender.currentTitle
        
        totalTime = eggTimes[hardness!]!
        
       timer =  Timer.scheduledTimer(timeInterval: 1.0 , target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        
        if secondPassed < totalTime {
    
            secondPassed += 1
            progressBar.progress = Float(secondPassed) / Float(totalTime)
            
    
            
        } else{
            titleLabel.text = "DONE!"
            timer.invalidate()
            
        }
    }

}

