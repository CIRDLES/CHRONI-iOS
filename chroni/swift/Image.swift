//
//  Image.swift
//  chroni
//
//  Created by Tyler Newman on 3/14/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import Foundation

/**
 Defines the structure of an Image object for Analysis Images found in Aliquot files.
 */
public class Image {
    
    private var imageURL: String
    
    init(url: String) {
        self.imageURL = url
    }
    
    public func getImageURL() -> String {
        return self.imageURL
    }
    
}
