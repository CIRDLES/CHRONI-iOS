//
//  FilePickerViewController.swift
//  chroni
//
//  Created by Tyler Newman on 6/16/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import UIKit

class FilePickerViewController: UITableViewController, UIPopoverPresentationControllerDelegate, AddFolderDelegate {
    
    @IBOutlet var titleText: UINavigationItem!
    @IBOutlet var cancelButton: UIBarButtonItem!
    
    var delegate: FileDelegate?
    
    let fileManager = NSFileManager.defaultManager()
    var currentDirectory: String = ""
    var highestDir: String = ""
    
    var files = [File]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // displays Edit button for the controller
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        
        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        
        let chroniDir = dirPaths[0]
        
        currentDirectory = NSURL(fileURLWithPath: chroniDir).URLByAppendingPathComponent("chroni").path!
        
        highestDir = currentDirectory
        
        resetAndLoadFiles(0)
        
    }
    
    // Resets and loads the files from currentDirectory. Accepts an integer value that determines the type of animation used for the table update: -1: right, 0: none, 1: left
    func resetAndLoadFiles(animation: Int) {
        files.removeAll()
        
        do {
            let fileList = try fileManager.contentsOfDirectoryAtPath(currentDirectory)
            
            for fileName in fileList {
                
                // attempts to unwrap new path for each child
                if let path = NSURL(fileURLWithPath: currentDirectory).URLByAppendingPathComponent(fileName).path {
                    
                    // creates the new file object and adds it to the list of current files
                    let newFile: File = File(name: fileName, path: path)
                    files += [newFile]
                }
            }
            
        } catch {
            // TODO: handle errors
        }
        
        if (animation == -1) {
            tableView.reloadSections(NSIndexSet(index: 0), withRowAnimation: .Right)
            
        } else if (animation == 0) {
            tableView.reloadData()
            
        } else {
            tableView.reloadSections(NSIndexSet(index: 0), withRowAnimation: .Left)
        }
    }
    
    // Updates the currentDirectory instance variable
    func updateCurrentDirectory(newDir: String) {
        currentDirectory = newDir
        fileManager.changeCurrentDirectoryPath(currentDirectory)
    }
    
    // Handles what happens when the Previous Folder button is clicked
    @IBAction func previousFolderClick(sender: UIBarButtonItem) {
        
        // only goes back as far as the directory that contains chroni
        if (currentDirectory != highestDir) {
            
            // attempts to unwrap parent directory
            if let newDir = (NSURL(fileURLWithPath: currentDirectory).URLByDeletingLastPathComponent!.path) {
            
                updateCurrentDirectory(newDir)
                resetAndLoadFiles(-1)
            
            } else {
                // TODO: when cannot unwrap
            }
        }
    }
    
    // Handles the New Folder button in the bottom right corner
    @IBAction func newFolderClick(sender: UIBarButtonItem) {
        
        let newFolderController = self.storyboard?.instantiateViewControllerWithIdentifier("FolderPopover") as! FolderPopoverViewController
        
        // sets the size of the popover
        newFolderController.preferredContentSize = CGSize(width: 350, height: 200)
        
        let navController = UINavigationController(rootViewController: newFolderController)
        
        navController.modalPresentationStyle = .Popover
        
        let popOver = navController.popoverPresentationController
        
        popOver?.delegate = self
        popOver?.barButtonItem = sender
        
        newFolderController.delegate = self
        
        presentViewController(navController, animated: true, completion: nil)
    }
    
    // Executes when the New Folder Popover adds a new folder. Adds a new folder to the currentDirectory
    func addFolder(name: String) {

        let newDir = NSURL(fileURLWithPath: currentDirectory).URLByAppendingPathComponent(name)
        
        // creates the new directory
        do {
            try fileManager.createDirectoryAtURL(newDir, withIntermediateDirectories: true, attributes: nil)
            
            resetAndLoadFiles(0)
            
        } catch {
            // TODO when cannot create directory
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
    // Handles the Cancel button in the top right corner
    @IBAction func cancel(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    // Handles when an item is selected from the table
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let file = files[indexPath.row]
        
        var isDirectory: ObjCBool = ObjCBool(false)
        
        fileManager.fileExistsAtPath(file.getFilePath(), isDirectory: &isDirectory)
        
        if isDirectory {
            updateCurrentDirectory(file.getFilePath())
            resetAndLoadFiles(1)
            
        } else {
            // tells the ReportsViewController to pick the file chosen
            delegate?.chooseFile(file)
            
            dismissViewControllerAnimated(true, completion: nil)
        }
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return files.count
    }
    
     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FileTableViewCell", forIndexPath: indexPath) as! FileTableViewCell
        
        let file = files[indexPath.row]
        
        cell.fileNameText.text = file.getFileName()
        
        return cell
     }
    
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            
            // TODO: implement file delete functionality
            
            let file: File = files[indexPath.row]
            
            var isDirectory: ObjCBool = ObjCBool(false)
            
            fileManager.fileExistsAtPath(file.getFilePath(), isDirectory: &isDirectory)
            
            do {
                
                // if the file is not a directory or it is an empty directory, deletes it
                if (isDirectory) {
                    
                    if (try fileManager.contentsOfDirectoryAtPath(file.getFilePath()).count == 0) {
                        // deletes the actual file
                        try fileManager.removeItemAtPath(file.getFilePath())
                    
                        files.removeAtIndex(indexPath.row)
                    
                        // Delete the row from the data source
                        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
                    } else {
                        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Right)
                    }
                }
            } catch {
                // TODO when cannot delete
            }
        }
     }
 
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
