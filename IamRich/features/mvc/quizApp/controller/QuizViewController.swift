import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var quizQuestion: UILabel!
    
    var quiz = QuizModel()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "QUIZ"
        quizQuestion.text = quiz.getCurrentQuestion()
        questionLabel.numberOfLines = 0
    }
    
    @IBAction func quizAction(_ sender: UIButton) {
        sender.backgroundColor = .orange
        quizQuestion.text = quiz.getCurrentQuestion()
        Timer.scheduledTimer(withTimeInterval: 0.700, repeats: false){
            Timer in
            Timer.invalidate()
            if sender == self.trueButton {
                sender.backgroundColor = .red
            }else{
                sender.backgroundColor = .systemTeal
            }
        }
    }
}
