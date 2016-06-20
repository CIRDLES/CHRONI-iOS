//
//  HomeViewController.swift
//  chroni
//
//  Created by Tyler Newman on 6/16/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let fileManager = NSFileManager.defaultManager()
    
    @IBOutlet var versionNumberText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: set version number
        versionNumberText.text = "Version Number"

        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let docsDir: String = dirPaths[0]
        
        do {
            let fileList = try fileManager.contentsOfDirectoryAtPath(docsDir)
            
            let chroniURL = NSURL(fileURLWithPath: docsDir).URLByAppendingPathComponent("chroni")
            
            // creates the CHRONI directories if they aren't there
            if !fileList.contains("chroni") {
                // creates chroni folder
                try fileManager.createDirectoryAtURL(chroniURL, withIntermediateDirectories: true, attributes: nil)
                
                // creates chroni/Aliquots folder
                try fileManager.createDirectoryAtURL(chroniURL.URLByAppendingPathComponent("Aliquots"), withIntermediateDirectories: true, attributes: nil)
                
                // creates chroni/Report Settings folder
                try fileManager.createDirectoryAtURL(chroniURL.URLByAppendingPathComponent("Report Settings"), withIntermediateDirectories: true, attributes: nil)
                
            } else {
                let chroniFileList = try fileManager.contentsOfDirectoryAtURL(chroniURL, includingPropertiesForKeys: [], options: [])
                
                if !chroniFileList.contains(NSURL(fileURLWithPath: "Aliquots")) {
                    
                }
            }
            
        } catch {
            // error
            print("Couldn't create directories")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
