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
    }

    
    
    @IBAction func saveClicked(_ sender: Any) {
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        BirthDayLabel.text = "Birthday: \(BirthDayTextField.text!)"
        
    }
  
}

