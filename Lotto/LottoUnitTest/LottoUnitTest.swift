//
//  LottoUnitTest.swift
//  LottoUnitTest
//
//  Created by jamie.day on 17/05/2019.
//  Copyright © 2019 jamie.day. All rights reserved.
//

import XCTest

class LottoUnitTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBuyOneLottoWithOneThousandWon() {
        let extractedExpr = Lotto(money: 8000)
        let numberOfLotto = extractedExpr.count
        XCTAssertEqual(numberOfLotto, 8)
    }

}
