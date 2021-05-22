//
//  ViewController.swift
//  BirthdayNoteTakerSwift
//
//  Created by Bakyt Dzhumabaev on 21/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let savedName = UserDefaults.standard.object(forKey: "name")
        let savedBirthday = UserDefaults.standard.object(forKey: "birthday")
    }


    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birtday: \(birthdayTextField.text!)"
        
    }
}

