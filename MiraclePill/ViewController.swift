//
//  ViewController.swift
//  MiraclePill
//
//  Created by Chris Michael on 11/08/2016.
//  Copyright © 2016 Chris Michael. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var miraclePill: UIImageView!
    @IBOutlet weak var miraclePillLabel: UILabel!
    @IBOutlet weak var miraclePillPrice: UILabel!
    @IBOutlet weak var divider: UIView!
    
    @IBOutlet weak var fullNameHeader: UILabel!
    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var streetAddressHeader: UILabel!
    @IBOutlet weak var streetAddressField: UITextField!
    @IBOutlet weak var cityHeader: UILabel!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateHeader: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryHeader: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var zipHeader: UILabel!
    @IBOutlet weak var zipField: UITextField!
    
    @IBOutlet weak var buyBtn: UIButton!
    
    @IBOutlet weak var success: UIImageView!
    
    let states = ["ACT", "SA", "VIC", "NSW", "TAS", "NT", "QLD"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        
        countryHeader.isHidden = true
        countryField.isHidden = true
        zipHeader.isHidden = true
        zipField.isHidden = true
    }
    
    @IBAction func buyButtonPressed(_ sender: AnyObject) {
        
        miraclePill.isHidden = true
        miraclePillLabel.isHidden = true
        miraclePillPrice.isHidden = true
        divider.isHidden = true
        fullNameHeader.isHidden = true
        fullNameField.isHidden = true
        streetAddressHeader.isHidden = true
        streetAddressField.isHidden = true
        cityHeader.isHidden = true
        cityField.isHidden = true
        stateHeader.isHidden = true
        statePickerBtn.isHidden = true
        countryHeader.isHidden = true
        countryField.isHidden = true
        zipHeader.isHidden = true
        zipField.isHidden = true
        buyBtn.isHidden = true
        
        success.isHidden = false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: .normal)
        statePicker.isHidden = true
        countryHeader.isHidden = false
        countryField.isHidden = false
        zipHeader.isHidden = false
        zipField.isHidden = false
    }
    
}

