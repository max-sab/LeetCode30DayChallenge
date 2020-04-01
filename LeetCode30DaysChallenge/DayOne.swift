//
//  main.swift
//  LeetCode30DaysChallenge
//
//  Created by Maksym Sabadyshyn on 4/1/20.
//  Copyright © 2020 Maksym Sabadyshyn. All rights reserved.
//

import Foundation

class DayOne {
    var res: Int?
    var usedNumbers = Set<Int>()

    func singleNumber(_ nums: [Int]) -> Int {
        nums.forEach {
            num in
            if nums.filter({$0 == num}).count == 1 {
                res = num
            }
        }
        //forced unwrapped because we always have result by task definition
        return res!
    }
}
