//
//  Lotto.swift
//  Lotto
//
//  Created by jamie.day on 17/05/2019.
//  Copyright © 2019 jamie.day. All rights reserved.
//

import Foundation

typealias Ticket = [Int]

class Lotto {
    let tickets: [Ticket]
    
    init(money: Int) {
        var tickets: [[Int]] = []
        for _ in 0..<(money/1000) {
            let ticket = [1, 2, 3, 4, 5, 6]
            tickets.append(ticket)
        }
        self.tickets = tickets
    }

}
