//
//  Fraction.swift
//  chroni
//
//  Created by Tyler Newman on 3/4/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import Foundation

/**
 This class structures a Fraction for an Aliqout file that has been parsed.
 */
public class Fraction {
    
    private var fractionID: String
    private var numberOfGrains: String
    
    private var valueModelMap: [String: ValueModel]? = nil
    
    init(id: String, grains: String) {
        self.fractionID = id
        self.numberOfGrains = grains
    }
    
    public func getFractionID() -> String {
        return self.fractionID
    }
    
    public func getValueModelMap() -> [String: ValueModel]? {
        return self.valueModelMap
    }
    
    public func getNumberOfGrains() -> String {
        return self.numberOfGrains
    }
    
}