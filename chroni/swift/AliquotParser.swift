//
//  AliquotParser.swift
//  chroni
//
//  Created by Tyler Newman on 3/14/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import Foundation

/**
 This class can parse an Aliquot XML file and return a MapTuple containing the gained information.
 */
public class AliquotParser: NSObject, NSXMLParserDelegate {
    /*
    
    public static func beginParsing(filePath: String) -> MapTuple? {
        
        // instantiates the file manager to make sure the file is there
        let fileManager = NSFileManager.defaultManager()
        
        
        // first checks to make sure that the file exists AND that it is readable
        if fileManager.fileExistsAtPath(filePath)
            && fileManager.isReadableFileAtPath(filePath) {
                // instantiates the XML parser at the specified location
                let parser = NSXMLParser(contentsOfURL: (NSURL(string: filePath))!)!
                
                parser.delegate = self
                
                
                
        } else {
            return nil
        }
        return nil
    }
 */
 
    
    public func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
    }
    
    public func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
    }
    
    public func parser(parser: NSXMLParser, foundCharacters string: String) {
    }
    
    public func parser(parser: NSXMLParser, parseErrorOccurred parseError: NSError) {
    }
    
}