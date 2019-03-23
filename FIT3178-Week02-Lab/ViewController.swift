//
//  ViewController.swift
//  FIT3178-Week02-Lab
//
//  Created by Chak Lee on 12/3/19.
//  Copyright © 2019 Chak Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var houseSegmented: UISegmentedControl!
    @IBOutlet weak var funSwitch: UISwitch!
    @IBOutlet weak var testScrollViewControl: UIScrollView!
    
    
    var textAttribute: UIColor?
    
    @IBAction func funTime(_ sender: Any){
        if(funSwitch.isOn){
            textAttribute = UIColor(red: 0.67, green: 0.27, blue: 0.20, alpha: 1.0)
            navigationController?.navigationBar.barTintColor = textAttribute
            
        }
        else {
            textAttribute = UIColor(red: 0.52, green: 0.03, blue: 0.20, alpha: 1.0)
            navigationController?.navigationBar.barTintColor = textAttribute
            
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //nameTextField.delegate = self
        //ageTextField.delegate = self
        testScrollViewControl.keyboardDismissMode = .interactive
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "createHouseSegue" {
            let destination = segue.destination as! HouseViewController
            let name = nameTextField.text!
            let house = houseSegmented.titleForSegment(at: houseSegmented.selectedSegmentIndex)!
            var age: Int = 0
            if let enteredAge = Int(ageTextField.text!){
                age = enteredAge
            }
            
            let newPerson = Person(name: name, house: house, age:age)
            destination.person = newPerson
        }
    }


}

