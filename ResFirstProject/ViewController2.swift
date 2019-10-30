

import UIKit

class ViewController2: UIViewController {
    var mealViewCON2: meal?
    @IBOutlet weak var nameMeal: UILabel!
    @IBOutlet weak var imageMeal: UIImageView!
    @IBOutlet weak var quantity: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        quantity.text = String(sender.value) 
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    nameMeal.text = mealViewCON2?.Name!
      imageMeal.image = UIImage(named: (mealViewCON2?.Image!)!)
        desMeal.text = mealViewCON2?.Des!
        priceMeal.text = "$\(String(describing: mealViewCON2!.Price!))"
       
    }
    @IBOutlet weak var desMeal: UITextView!
    
    @IBAction func BackToMeals(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var priceMeal: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
