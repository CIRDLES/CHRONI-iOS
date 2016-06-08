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
    
    let fraction = Fraction(id: "fractionID", grains: "fractionGrains")
    
    func testFractionInitialization() {
        // does the Fraction class initialize properly with the correct values?
    }
    
    func testCorrectFractionID() {
        // is the fraction ID returned?
        let result = fraction.getFractionID()
        XCTAssertEqual(result, "fractionID")
    }
    
    func testGetValueModelMap() {
        // is the valueModelMap returned with the correct values?
        let result = fraction.getValueModelMap()
        XCTAssertEqual(result, "valueModel")
    }
    
    func testFractionToString() {
        // does the toString method return the correct values?
        let result = fraction.toString()
    }
    
    func testGetNumberOfGrains() {
        // does the getNumberOfGrains() method return the correct value?
        let result = fraction.getNumberOfGrains()
        XCTAssertEqual(result, "fractionGrains")
    }
    
    //Column
    
    let column = Column(name: "column", name1: "column1", name2: "column2", name3: "column3",
                        units: "columnUnits", method: "columnMethod", variable: "columnVar", pIndex: 6,
                        arbitraryDigitCount: true, sigFigs: 5)
    
    func testColumnInitialization() {
        // does the Column initialize with the correct values?
    }
    
    func testColumnToString(){
        // does the toString method return the correct values?
    }
    
    func testColumnGetDisplayName1() {
        // is correct display name reurned?
        let result = column.getDisplayName1()
        XCTAssertEqual(result, "column1")
    }
    
    func testColumnGetDisplayName2() {
        // is correct display name reurned?
        let result = column.getDisplayName2()
        XCTAssertEqual(result, "column2")
    }
    
    func testColumnGetDisplayName3() {
        // is correct display name reurned?
        let result = column.getDisplayName3()
        XCTAssertEqual(result, "column3")
    }
    
    func testColumnGetMethodName() {
        // does the getMethodName method return the correct string?
        let result = column.getMethodName()
        XCTAssertEqual(result, "columnMethod")
    }
    
    func testGetUncertaintyColumn() {
        // does the getUncertaintyColumn method return the correct column? (not nil)
        let result = column.getUncertaintyColumn()
        XCTAssertEqual(result!, column)
    }
    
    func testGetUncertaintyColumnNil() {
        // does the getUncertaintyColumn method return nil when the optional column does not have a value?
        let result = column.getUncertaintyColumn()
        XCTAssertEqual(result!, nil)
    }
    
    func testGetUncertaintyType() {
        // does the getUncertaintyColumn method return the correct string? (not nil)
        let result = column.getUncertaintyType()
        XCTAssertEqual(result, "Uncertainty Type")
    }
    
    func testGetUncertaintyTypeNil() {
        // does the getUncertaintyType method return nil when the optional string does not have a value?
        let result = column.getUncertaintyType()
        XCTAssertEqual(result, nil)
    }
    
    func testColumnGetVariableName() {
        //  does the getVariableName method return the correct value?
        let result = column.getVariableName()
        XCTAssertEqual(result, "columnVar")
    }
    
    func testColumnGetUnits() {
        // does the getUnits method return the correct value?
        let result = column.getUnits()
        XCTAssertEqual(result, "columnUnits")
    }
    
    func testColumnGetCountOfSignificantDigits() {
        // does the getCountOfSignificantDigitis method return the correct value?
        let result = column.getCountOfSignificantDigits()
        XCTAssertEqual(result, 5)
    }
    
    func testColumnSetUncertaintyType() {
        // does the ColumnSetUncertaintyType method change the value correctly?
        column.setUncertaintyType("newType")
        let result = column.getUncertaintyType()
        XCTAssertEqual(result, "newType")
    }
    
    func testColumnIsDisplayedWithArbitraryDigitCount() {
        // does the IsDisplayedWithArbitraryDigitCount method return the correct boolean value?
        let result = column.isDisplayedWithArbitraryDigitCount()
        XCTAssertEqual(result, true)
    }
    
    //Category
    
    let category = Category(name: "displayName", pIndex: 11)
    
    func testCategoryInitializer() {
        // does the Catgory initialize with the correct values?
        let result = (category.getDisplayName(), category.getPositionIndex())
        XCTAssertEqual(result, ("displayName", 11))
    }
    
    func testGetCategoryColumnMap() {
        // does the SortedMap get returned correctly?
        let result = category.getCategoryColumnMap()
        XCTAssertEqual(result, 11)
    }
    
    func testCategoryToString() {
        // does the toString method return the correct values?
    }
    
    func testCategoryGetDisplayName() {
        // does the getDiplayName method return the correct value?
        let result = category.getDisplayName()
        XCTAssertEqual(result, "displayName")
    }
    
    func testCategoryGetColumnCount() {
        // does the getColumnCount method return the correct value?
        let result = category.getColumnCount()
        XCTAssertEqual(result, 0)
    }
    
    func testCategorySetColumnCount() {
        // does the setColumnCount method modify the columnCount value?
        category.setColumnCount(55)
        let result = category.getColumnCount()
        XCTAssertEqual(result, 55)
    }
    
    //ValueModel
    
    let valueModel = ValueModel(modelName: "name", modelValue: 5.5, uncertainty: "type", sigma: 8.8)
    
    func testValueModelInitialization() {
        // does the valueModel initialize with the correct values?
        let result = (valueModel.getName(), valueModel.getValue(), valueModel.getUncertaintyType(), valueModel.getOneSigma())
        XCTAssertEqual(result, ("name", 5.5, "type", 8.8))
    }
    
    func testValueModelToString() {
        // does the toString method return the correct values?
    }
    
    func testValueModelGetName() {
        // does the getName method return the correct value?
        let result = valueModel.getName()
        XCTAssertEqual(result, "name")
    }
    
    func testValueModelSetName() {
        // does the setName method modify the name value?
        valueModel.setName("newName")
        let result = valueModel.getName()
        XCTAssertEqual(result, "newName")
    }
    
    func testValueModelGetValue() {
        // does the getValue method return the correct value?
        let result = valueModel.getValue()
        XCTAssertEqual(result, 5.5)
    }
    
    func testValueModelGetOneSigma() {
        // does the getOneSigma method return the correct value?
        let result = valueModel.getOneSigma()
        XCTAssertEqual(result, 8.8)
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
