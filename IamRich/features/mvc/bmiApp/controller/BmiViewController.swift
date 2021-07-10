import UIKit

class BmiViewController: UIViewController {

    @IBOutlet weak var calculateLabel: UILabel!
    
    @IBOutlet weak var youtBmiLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var displayHeightLable: UILabel!
    
    @IBOutlet weak var displayWeightLabel: UILabel!
    
    var bmiModel = UserData()
    
    @IBAction func onHeightChangedListener(_ sender: UISlider) {
        displayHeightLable.text = "\(sender.value)"
        bmiModel.height = Int(sender.value)
    }
    
    @IBAction func onWeightChangedListener(_ sender: UISlider) {
        displayWeightLabel.text = "\(sender.value)"
        bmiModel.weight = Int(sender.value)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! ShowBMIViewController
        secondViewController.receivedBmi = bmiModel.getBMI()
    }
    
    // INITIALIZER
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeView()
    }
    
    func initializeView(){
        title = "BMI APP"
        calculateLabel.text = calculateLabel.text?.uppercased()
        youtBmiLabel.text = youtBmiLabel.text?.uppercased()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        hideNavigationBar(animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        showNavigationBar(animated: animated)
    }
}
