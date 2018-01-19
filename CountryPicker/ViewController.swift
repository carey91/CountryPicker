//
//  ViewController.swift
//  CountryPicker
//
//  Created by Mathan on 1/19/18.
//  Copyright © 2018 Ruah. All rights reserved.
//

import UIKit
import CountryPickerView

class ViewController: UIViewController, CountryPickerViewDelegate  {

    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cp = CountryPickerView(frame: CGRect(x: 0, y: 0, width: 120, height: 30))
        phoneTextField.leftView = cp
        phoneTextField.leftViewMode = .always
        cp.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func countryPickerView(_ countryPickerView: CountryPickerView, didSelectCountry country: Country) {
        let title = "Selected Country"
        let message = "Name: \(country.name) \nCode: \(country.code) \nPhone: \(country.phoneCode)"
        print(message)
        //showAlert(t   itle: title, message: message)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

