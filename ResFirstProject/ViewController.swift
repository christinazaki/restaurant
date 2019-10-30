import UIKit

class ViewController: UIViewController {
    var meals = Array<meal>() 
    @IBOutlet weak var mealTableView: UITableView!
   // var mealsArray = ["Pepperoni","Meat lover","Maxican hot dog","Margherita","Little italy"]
    override func viewDidLoad() {
        super.viewDidLoad()
       /* meals.append(meal(Name: "Pepperoni", Image: #imageLiteral(resourceName: "dice1")))
         meals.append(meal(Name: "Meat lover", Image: #imageLiteral(resourceName: "dice2")))
         meals.append(meal(Name: "Maxican hot dog", Image:  #imageLiteral(resourceName: "dice3")))
         meals.append(meal(Name: "Margherita", Image:  #imageLiteral(resourceName: "dice4")))
         meals.append(meal(Name: "Little italy", Image: #imageLiteral(resourceName: "dice5")))
        */
        ReadFromMealsPlist()
        // Do any additional setup after loading the view.
        mealTableView.dataSource = self
        mealTableView.delegate = self
    }
    func ReadFromMealsPlist(){
        let path =   Bundle.main.path(forResource: "meals", ofType: "plist")!
        let url = URL(fileURLWithPath: path)
        let data = try! Data( contentsOf: url) //try catch bs y2ama fiha kima catch b nil
        let plist = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format:nil  )
        let dicArray = plist as! [[String:AnyObject]]
        for dic  in dicArray {
            meals.append(meal(Name: dic["Name"]!
                as! String, Image: dic["Image"]! as! String,Des: dic["Des"]!
                    as! String, Quantity: dic["Quantity"]!
                        as! Int, Price: dic["Price"]!
                            as! Int))
        }
    }


    }
extension ViewController: UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let  m7twaCell = mealsArray [indexPath.row]
        let cell : myCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myCell
        cell.nameMeal.text = meals [indexPath.row].Name!
        cell.imageMeal.image = UIImage(named:  meals[indexPath.row].Image!)
      //  cell.textLabel?.text = m7twaCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     return 250
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         print(meals[indexPath.row].Price!)
        performSegue(withIdentifier: "showDetails", sender: meals[indexPath.row])
        print(meals[indexPath.row].Des!)
    }
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let dis = segue.destination as? ViewController2
        {
            if let food = sender as? meal
            {
               dis.mealViewCON2 = food
            }
        }
        }
        
    
    
    
}

