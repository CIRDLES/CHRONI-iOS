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
    func testFractionInitialization() {
        // does the Fraction class initialize properly with the correct values?
    }
    
    func testCorrectFractionID() {
        // is the fraction ID returned?
    }
    
    func testGetValueModelMap() {
        // is the valueModelMap returned with the correct values?
    }
    
    func testFractionToString() {
        // does the toString method return the correct values?
    }
    
    func testGetNumberOfGrains() {
        // does the getNumberOfGrains() method return the correct value?
    }
    
    //Column
    func testColumnInitialization() {
        // does the Column initialize with the correct values?
    }
    
    func testColumnToString(){
        // does the toString method return the correct values?
    }
    
    func testColumnGetDisplayNames() {
        // do the getDisplayName methods return the correct values?
    }
    
    func testColumnGetMethodName() {
        // does the getMethodName method return the correct string?
    }
    
    func testGetUncertaintyColumn() {
        // does the getUncertaintyColumn method return the correct column? (not nil)
    }
    
    func testGetUncertaintyColumnNil() {
        // does the getUncertaintyColumn method return nil when the optional column does not have a value?
    }
    
    func testGetUncertaintyType() {
        // does the getUncertaintyColumn method return the correct string? (not nil)
    }
    
    func testGetUncertaintyTypeNil() {
        // does the getUncertaintyType method return nil when the optional string does not have a value?
    }
    
    func testColumnGetVariableName() {
        //  does the getVariableName method return the correct value?
    }
    
    func testColumnGetUnits() {
        // does the getUnits method return the correct value?
    }
    
    func testColumnGetCountOfSignificantDigits() {
        // does the getCountOfSignificantDigitis method return the correct value?
    }
    
    func testColumnSetUncertaintyType() {
        // does the ColumnSetUncertaintyType method change the value correctly?
    }
    
    func testColumnIsDisplayedWithArbitraryDigitCount() {
        // does the IsDisplayedWithArbitraryDigitCount method return the correct boolean value?
    }
    
    //Category
    func testCategoryInitializer() {
        // does the Catgory initialize with the correct values?
    }
    
    func testGetCategoryColumnMap() {
        // does the SortedMap get returned correctly?
    }
    
    func testCategoryToString() {
        // does the toString method return the correct values?
    }
    
    func testCategoryGetDisplayName() {
        // does the getDiplayName method return the correct value?
    }
    
    func testCategoryGetColumnCount() {
        // does the getColumnCount method return the correct value?
    }
    
    func testCategorySetColumnCount() {
        // does the setColumnCount method modify the columnCount value?
    }
    
    //ValueModel
    func testValueModelInitialization() {
        // does the valuModel initialize with the correct values?
    }
    
    func testValueModelToString() {
        // does the toString method return the correct values?
    }
    
    func testValueModelGetName() {
        // does the getName method return the correct value?
    }
    
    func testValueModelSetName() {
        // does the setName method modify the name value?
    }
    
    func testValueModelGetValue() {
        // does the getValue method return the correct value?
    }
    
    func testValueModelGetOneSigma() {
        // does the getOneSigma method return the correct value?
    }
    
    //Numbers
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
        // is UnitConversions returned as a HashMap?
    }
    
    //AliquotParser
    func testBeginParsing() {
        // does the beginParsing method run and return a MapTuple?
    }
    
    func testCorrectAliquotName() {
        // does the parser give the aliquotName string the correct value?
    }
    
    func testCorrectimageMap() {
        // does the parser give the imageMap tree map the correct value?
    }
    
    func testCorrectFractionMap() {
        // does the parser give the fractionMap image map the correct value?
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

    //Image
    func testGetImageURL() {
        // is the correct URL returned?
    }
    
    func testImageInstantiated() {
        // was the image instantiated and is it the correct type?
    }
    
    //MapTuple
    func testMapTupleInitializer() {
        // does the mapTuple inititalize with the correct values?
    }
    
    func testMapTupleGetFractionMap() {
        // does the getFractionMap method return the correct values?
    }
    
    func testMapTupleGetImageMap() {
        // does the getImageMap method return the correct values?
    }
    
    func testMapTupleSetFractionMap() {
        // does the setFractionMap method modify the correct values?
    }
    
    func testMapTupleSetImageMap() {
        // does the setImageMap method modify the correct values?
    }

}
