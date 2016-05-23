//
//  Column.swift
//  chroni
//
//  Created by Tyler Newman on 3/4/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import Foundation

/**
 This class defines the structure of a single Column object obtained from parsing Report Settings Files.
 */
public class Column {
    
    private var displayName: String
    private var displayName1: String
    private var displayName2: String
    private var displayName3: String
    
    private var units: String
    private var methodName: String
    private var variableName: String
    
    private var positionIndex: Int
    private var displayedWithArbitraryDigitCount: Bool
    private var countOfSignificantDigits: Int
    
    private var uncertaintyColumn: Column? = nil
    private var uncertaintyType: String? = nil
    
    
    init(name: String, name1: String, name2: String, name3: String,
        units: String, method: String, variable: String, pIndex: Int,
        arbitraryDigitCount: Bool, sigFigs: Int) {
            
            // initialize all variables except uncertaintyColumn and uncertaintyType, which are nil
            self.displayName = name
            self.displayName1 = name1
            self.displayName2 = name2
            self.displayName3 = name3
            
            self.units = units
            self.methodName = method
            self.variableName = variable
            
            self.positionIndex = pIndex
            self.displayedWithArbitraryDigitCount = arbitraryDigitCount
            self.countOfSignificantDigits = sigFigs
        
    }
    
    public func getDisplayName1() -> String {
        return self.displayName1
    }
    
    public func getDisplayName2() -> String {
        return self.displayName2
    }
    
    public func getDisplayName3() -> String {
        return self.displayName3
    }

    public func getUncertaintyColumn() -> Column? {
        // returns the column optional (may be nil)
        return self.uncertaintyColumn
    }
    
    public func getMethodName() -> String {
        return self.methodName
    }
    
    public func getVariableName() -> String {
        return self.variableName
    }
    
    public func getUnits() -> String {
        return self.units
    }
    
    public func getCountOfSignificantDigits() -> Int {
        return self.countOfSignificantDigits
    }
    
    public func getUncertaintyType() -> String? {
        // returns the uncertainty type optional (may be nil)
        return uncertaintyType
    }
    
    public func setUncertaintyType(uncertainty: String) {
        self.uncertaintyType = uncertainty
    }
    
    public func isDisplayedWithArbitraryDigitCount() -> Bool {
        return displayedWithArbitraryDigitCount
    }
    
}
