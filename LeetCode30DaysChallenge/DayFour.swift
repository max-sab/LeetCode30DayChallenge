//
//  DayFour.swift
//  LeetCode30DaysChallenge
//
//  Created by Maksym Sabadyshyn on 4/4/20.
//  Copyright © 2020 Maksym Sabadyshyn. All rights reserved.
//

import Foundation

struct DayFour {
    func moveZeroes(_ nums: inout [Int]) {
        var numOfZerosToAdd = 0
        nums.forEach{numOfZerosToAdd += $0 == 0 ? 1 : 0}
        nums = nums.filter{$0 != 0}

        for _ in 0 ..< numOfZerosToAdd {
            nums.append(0)
        }
    }
}
