//
//  ValueModel.swift
//  chroni
//
//  Created by Tyler Newman on 3/14/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import Foundation

public class ValueModel {
    
    private var name: String
    private var value: Float
    private var uncertaintyType: String
    private var oneSigma: Float
    
    init(modelName: String, modelValue: Float, uncertainty: String, sigma: Float) {
        self.name = modelName
        self.value = modelValue
        self.uncertaintyType = uncertainty
        self.oneSigma = sigma
    }
    
    public func getName() -> String {
        return self.name
    }
    
    public func setName(newName: String) {
        self.name = newName
    }
    
    public func getValue() -> Float {
        return self.value
    }
    
    public func getOneSigma() -> Float {
        return self.oneSigma
    }
    
}
