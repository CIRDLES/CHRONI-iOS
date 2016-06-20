//
//  ViewController.swift
//  chroni
//
//  Created by Tyler Newman on 3/4/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import UIKit

class ReportsViewController: UIViewController, FileDelegate {
    
    
    @IBOutlet var titleText: UILabel!
    @IBOutlet var fileText: UILabel!
    @IBOutlet var fileTextField: UITextField!
    
    // TODO: set this to default file
    var chosenFile: File = File(name: "", path: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Handles what happens when a file has been chosen from delegate (FilePickerViewController)
    func chooseFile(file: File) {
        // TODO: tell if file is an Aliquot or Report Settings file
        chosenFile = file
        
        fileTextField.text = chosenFile.getFileName()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "aliquotToFilePickerSegue" {
            let filePcikerNav = segue.destinationViewController.childViewControllers[0] as! FilePickerViewController
            
            filePcikerNav.delegate = self
        }
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

}

