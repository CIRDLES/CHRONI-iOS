//
//  File.swift
//  chroni
//
//  Created by Tyler Newman on 6/17/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import Foundation

/**
 This class defines a file to be used in the FilePickerTableView
 */
public class File {
    
    private var fileName: String
    private var filePath: String
    
    init(name: String, path: String) {
        self.fileName = name
        self.filePath = path
    }
    
    func getFileName() -> String {
        return self.fileName
    }
    
    func getFilePath() -> String {
        return self.filePath
    }
    
    func setFileName(name: String) {
        self.fileName = name
    }
    
    func setFilePath(path: String) {
        self.filePath = path
    }
}