//
//  MapTuple.swift
//  chroni
//
//  Created by Tyler Newman on 3/14/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import Foundation

/**
 Objects of this class are used to hold relevant mapping information used in parsing Aliquot and Report Settings files.
 */
public class MapTuple {
    
    private var fractionMap: [String: Fraction]?
    private var imageMap: [String: Image]?
    
    init(mapOfFractions: [String: Fraction], mapOfImages: [String: Image]) {
        self.fractionMap = mapOfFractions
        self.imageMap = mapOfImages
    }
    
    public func getFractionMap() -> [String: Fraction]? {
        return self.fractionMap
    }
    
    public func setFractionMap(newFractionMap: [String: Fraction]?) {
        self.fractionMap = newFractionMap
    }
    
    public func getImageMap() -> [String: Image]? {
        return self.imageMap
    }
    
    public func setIamgeMap(newImageMap: [String: Image]?) {
        self.imageMap = newImageMap
    }
    
}
