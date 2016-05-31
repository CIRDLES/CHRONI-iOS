//
//  FileTests.swift
//  chroni
//
//  Created by Gabrielle Cozart on 5/23/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import XCTest
@testable import chroni

class FileTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //TODO
    func testAppStartDownload() {
        // does default aliquot download?
        // does default reportsettings 1 and 2 download?
    }
    
    //TODO
    func testGeochronConnection() {
        // is the app connected to the geochron portal?
    }
    
    func testCorrectUnits() {
        // is it using the correct units?
    }
    
    func testCorrectSignificantDigits() {
        // is it using the correct sigfigs?
    }
    
    //Fraction
    func testCorrectFractionID() {
        // is the fraction ID returned?
    }
    
    func testGetValueModelMap() {
        // is the valueModelMap returned with the correc values?
    }
    
    //Column
    func testColumnToString(){
        // does the toString method return the correct values?
    }
    
    //Category
    func testGetCategoryColumnMap() {
        // does the SortedMap get returned correctly?
    }
    
    func testCategoryToString() {
        // does the toString method return the correct values?
    }
    
    //ValueModel
    func testValueModelToString() {
        // does the toString method return the correct values?
    }
    
    //Number
    func testGrams() {
        // do unit conversions to grams work?
    }
    
    func testConcentrations() {
        // do concentration conversions work?
    }
    
    func testYears() {
        // do conversions to years work?
    }
    
    func testGetUnitConversionsMap() {
        //
    }
    
    //AliquotParser
    func testBeginParsing() {
        // does the beginParsing method run and return a MapTuple?
    }
    
    func testGetAliquotName() {
        // does the getAliquotName method return the correct name?
    }
    
    func testParser1() {
        // tests first parser method
    }
    
    func testParser2() {
        // tests second parser method
    }
    
    func testParser3() {
        // tests third parser method
    }
    
    func testParser4() {
        // tests fourth parser method
    }

    

}
