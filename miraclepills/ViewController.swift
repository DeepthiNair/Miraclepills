//
//  ViewController.swift
//  miraclepills
//
//  Created by Deepthi on 26/06/17.
//  Copyright © 2017 Deepthi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    let states = [ "Andhra Pradesh", "Arunachal Pradesh","Assam","Bihar","Chhattisgarh","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu & Kashmir","Jharkhand","Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Punjab","Rajasthan","Sikkim","Tamil Nadu","Tripura","Uttarakhand ","Uttar Pradesh","West Bengal"]

    @IBOutlet weak var StatePickBtn: UIButton!
    
    @IBOutlet weak var Completed: UIImageView!
    @IBOutlet weak var BuyNowBtn: UIButton!
    @IBOutlet weak var StatePick: UIPickerView!
       override func viewDidLoad() {
        super.viewDidLoad()
               // Do any additional setup after loading the view, typically from a nib.
    StatePick.dataSource = self
        StatePick.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BuyNowBtnPressed(_ sender: Any) {
        Completed.isHidden = false
        
    }
    
    @IBAction func StatePickBtnPressed(_ sender: Any) {
        StatePick.isHidden = false
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
        StatePickBtn.setTitle(states[row] , for: UIControlState.normal)
        StatePick.isHidden = true
    }
}

