//
//  FolderPopoverViewController.swift
//  chroni
//
//  Created by Tyler Newman on 6/17/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import UIKit

class FolderPopoverViewController: UIViewController {
    
    @IBOutlet var folderTextField: UITextField!
    @IBOutlet var errorLabel: UILabel!
    
    var delegate: AddFolderDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        folderTextField.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func createFolder(sender: UIButton) {
                
        if let name = folderTextField.text {
            if name == "" {
                self.errorLabel.text = "Please enter a valid folder name"
            } else {
                delegate?.addFolder(name)
                dismissViewControllerAnimated(true, completion: nil)
            }
        } else {
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
