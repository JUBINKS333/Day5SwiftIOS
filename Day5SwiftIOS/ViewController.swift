//
//  ViewController.swift
//  Day5SwiftIOS
//
//  Created by MacStudent on 2019-03-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
   
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    
    @IBOutlet weak var lblCountryName: UILabel!
    
    let country = ["usa","canada","india","africa","china","japan","argentina","brazil","russia","dubai"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.delegate=self
        self.picker.dataSource=self
    }


    @IBAction func birthDatePicker(_ sender: UIDatePicker) {
        
      print( sender.date)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return self.country.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        //    return "comp: \(component) row \(row)"
        
        return self.country[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          lblCountryName.text=self.country[row]
    }
}

