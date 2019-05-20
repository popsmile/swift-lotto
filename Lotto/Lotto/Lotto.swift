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
            let ticket = Lotto.makeTicket()
            tickets.append(ticket)
        }
        self.tickets = tickets
    }

    private static func makeTicket() -> Ticket {
        var numbers = Array(1...45)
        var ticket: Ticket = []
        
        for _ in 0..<6 {
            numbers = numbers.filter { !ticket.contains($0) }
            numbers.shuffle()
            let randomIndex = Int.random(in: 0..<numbers.count)
            ticket.append(numbers[randomIndex])
        }
        
        return ticket
    }
}
