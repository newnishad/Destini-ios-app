
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain: StoryBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUi()
    }
    
    func updateUi(){
        storyLabel.text = storyBrain.getStory().title
        choice1Button.setTitle(storyBrain.getStory().choice1, for: UIControl.State.normal)
        choice2Button.setTitle(storyBrain.getStory().choice2, for: UIControl.State.normal)
    }
    

}

