//
//  Numbers.swift
//  chroni
//
//  Created by Tyler Newman on 3/14/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import Foundation

/**
 Used to store relevat information for data conversions for the table display.
 */
public struct Numbers {
    
    // the dictionary that stores all necessary unit conversions
    public static let UNIT_CONVERSION_MAP: [String: Int] = [
        
        "" : 0,
        
        "g" : 0,
        "mg" : -3,
        "\u{03bc}g" : -6,
        "ng" : -9,
        "pg" : -12,
        "fg" : -15,
        
        "\u{0025}" : -2,
        "\u{2030}" : -3,
        "ppm" : -6,
        "ppb" : -9,
        "g/g" : 0,
        
        "a" : 0,
        "ka" : 3,
        "Ma" : 6,
        "Ga" : 9,
        
        "%/amu" : -2
        
    ]
    
}
