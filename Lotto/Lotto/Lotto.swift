//
//  Lotto.swift
//  Lotto
//
//  Created by jamie.day on 17/05/2019.
//  Copyright © 2019 jamie.day. All rights reserved.
//

import Foundation

class Lotto {
    let count: Int
    var tickets: [[Int]] = []
    
    init(money: Int) {
        self.count = money / 1000
        
        for _ in 0..<count {
            let ticket = Array.init(repeating: 0, count: 6)
            self.tickets.append(ticket)
        }
    }

}
