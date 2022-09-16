//
//  ViewController.swift
//  BirthDayNoteTaker
//
//  Created by Meriç Cebeci on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var BirthDayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var BirthDayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            nameLabel.text = newName
            
        }
        
        if let newBirthDay = storedBirthDay as? String{
            
            BirthDayLabel.text = newBirthDay
        }
        
    }

     @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.setValue(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(BirthDayTextField.text!, forKey: "birthday")
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        BirthDayLabel.text = "Birthday: \(BirthDayTextField.text!)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        _ = UserDefaults.standard.object(forKey: "birthday")
        
        if storedName is String {
            UserDefaults.standard.removeObject(forKey: "name")
            
        }
        
        if storedName is String {
            UserDefaults.standard.removeObject(forKey: "birthday" )
        }
    }
}

