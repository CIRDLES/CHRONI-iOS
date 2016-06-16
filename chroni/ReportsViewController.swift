//
//  ViewController.swift
//  chroni
//
//  Created by Tyler Newman on 3/4/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import UIKit

class ReportsViewController: UIViewController {
    
    
    @IBOutlet var titleText: UILabel!
    @IBOutlet var fileText: UILabel!
    
    var pickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toggle(sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0) {
            self.titleText.text = "Aliquot"
            self.fileText.text = "Aliquot"
        } else {
            self.titleText.text = "Report Settings"
            self.fileText.text = "Report Settings"
        }
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

}

