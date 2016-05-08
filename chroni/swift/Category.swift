//
//  Category.swift
//  chroni
//
//  Created by Tyler Newman on 3/4/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import Foundation

/**
 This class defines a Category object for a Report Settings  file.
 */
public class Category {
    
    private var displayName: String
    private var positionIndex: Int
    private var categoryColumnMap: [Int: Column]? = nil
    private var columnCount: Int = 0
    
    init(name: String, pIndex: Int) {
        self.displayName = name
        self.positionIndex = pIndex
        self.categoryColumnMap = [Int: Column]()
    }
    
    public func getDisplayName() -> String {
        return self.displayName
    }
    
    public func getCategoryColumnMap() -> [Int: Column]? {
        return self.categoryColumnMap
    }
    
    public func getColumnCount() -> Int {
        return self.columnCount
    }
    
    public func setColumnCount(count: Int) {
        self.columnCount = count
    }
    
}