//
//  JSONUtilTests.swift
//  MsrSwifty_Tests
//
//  Created by monsoir on 4/12/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
import MsrSwifty

class JSONUtilTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testModelToJSONString() {
        let modelA = Model(id: "abc", otherInfo: "abc")
        let result = JSON.stringify(modelA)
        XCTAssertNotNil(result)
        XCTAssertEqual(result, #"{"id":"abc","otherInfo":"abc"}"#)
    }

    func testModelsToJSONString() {
        let modelA = Model(id: "abc", otherInfo: "abc")
        let modelB = Model(id: "efg", otherInfo: "efg")
        let result = JSON.stringify([modelA, modelB])
        XCTAssertNotNil(result)
        XCTAssertEqual(result, #"[{"id":"abc","otherInfo":"abc"},{"id":"efg","otherInfo":"efg"}]"#)
    }

    func testModelToJSONObjectThenToModel() {
        let modelA = Model(id: "abc", otherInfo: "abc")
        let modelB = Model(id: "efg", otherInfo: "efg")
        let models = [modelA, modelB]

        let result1 = JSON.jsonify(models)
        XCTAssertNotNil(result1)
        let result2 = JSON.parse(result1!, type: [Model].self)

        XCTAssertEqual(models.count, result2?.count ?? 0)

        let resultModelA = result2?.first(where: { $0.id == modelA.id })
        XCTAssertNotNil(resultModelA)
        XCTAssertEqual(resultModelA?.otherInfo ?? "", modelA.otherInfo)

        let resultModelB = result2?.first(where: { $0.id == modelB.id })
        XCTAssertNotNil(resultModelB)
        XCTAssertEqual(resultModelB?.otherInfo ?? "", modelB.otherInfo)
    }

}

private class Model: Codable {
    let id: String
    let otherInfo: String

    init(id: String, otherInfo: String) {
        self.id = id
        self.otherInfo = otherInfo
    }
}

