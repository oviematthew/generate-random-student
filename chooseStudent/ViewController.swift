import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addField: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    
    @IBOutlet weak var randomStudentBtn: UIButton!
    
    @IBOutlet weak var randomStudentText: UILabel!
    
    var studentArray = [String]() // Use square brackets to define an empty array of Strings
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToArrBtn(_ sender: Any) {
        if let studentName = addField.text {
            studentArray.append(studentName) 
            addField.text = "" // Clear the text field
        }
    }
    
    @IBAction func getRandomStudent(_ sender: Any) {
        if let randomStudent = studentArray.randomElement() {
            randomStudentText.text = randomStudent 
        } else {
            randomStudentText.text = "No students in the list."
        }
    }
}
