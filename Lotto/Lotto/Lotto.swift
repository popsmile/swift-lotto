//
//  Lotto.swift
//  Lotto
//
//  Created by jamie.day on 17/05/2019.
//  Copyright © 2019 jamie.day. All rights reserved.
//

import Foundation

struct Lotto {
    let tickets: [Ticket]
    
    init(money: Int) {
        var tickets: [Ticket] = []
        for _ in 0..<(money/1000) {
            tickets.append(Ticket())
        }
        self.tickets = tickets
    }
}

struct Ticket {
    private let count = 6
    let numbers: [Int]
    
    init() {
        var pool = Array(1...45)
        var numbers = [Int]()
        for _ in 0..<count {
            pool = pool.filter { !numbers.contains($0) }
            pool.shuffle()
            let randomIndex = Int.random(in: 0..<pool.count)
            numbers.append(pool[randomIndex])
        }
        self.numbers = numbers
    }
}

struct LottoMachine {

    static func match(_ ticketNumbers: [Int], with winningNumbers: [Int]) -> Int {
        return 3
    }

}
