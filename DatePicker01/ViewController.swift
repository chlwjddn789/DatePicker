//
//  ViewController.swift
//  DatePicker01
//
//  Created by D7703_07 on 2019. 4. 17..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locale = Locale(identifier: "ko_KO")
        myDatePicker.locale = locale
        
        myDatePicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm EE a"
        let formattedDate = format.string(from: date)
        
        outLabel.text = formattedDate
        
        
        
    }

    @IBAction func valueChanged(_ sender: Any) {
     
        let selectedDate = myDatePicker.date
        print(selectedDate)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-mm-dd HH:mm EEE a"
        outLabel.text = formatter.string(from: selectedDate)
       
    }
}

