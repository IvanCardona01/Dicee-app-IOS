import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let diceImagesList = [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        
        let leftDiceNumber = Int.random(in: 1...5)
        let rigthDiceNumber = Int.random(in: 1...5)
        
        diceImageViewOne.image = diceImagesList[leftDiceNumber]
        diceImageViewTwo.image = diceImagesList[rigthDiceNumber]
    }
    
}

