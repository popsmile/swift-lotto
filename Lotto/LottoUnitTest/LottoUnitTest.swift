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

    func testBuy8LottoWith8000Won() {
        let lotto = Lotto(money: 8000)
        XCTAssertEqual(lotto.tickets.count, 8)
    }

    func testBuy8LottoWith8500Won() {
        let lotto = Lotto(money: 8500)
        XCTAssertEqual(lotto.tickets.count, 8)
    }
    
    func testGenerateLottoNumber() {
        let lotto = Lotto(money: 1000)
        XCTAssertEqual(lotto.tickets.count, 1)
    }
    
    func testNumbersNotOverlap() {
        let ticket = Lotto(money: 1000).tickets.first!
        var numbersInTicket: Set<Int> = []
        ticket.forEach { numbersInTicket.insert($0) }
        XCTAssertEqual(numbersInTicket.count, 6)
    }

}
