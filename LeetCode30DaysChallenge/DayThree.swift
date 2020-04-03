//
//  DayThree.swift
//  LeetCode30DaysChallenge
//
//  Created by Maksym Sabadyshyn on 4/3/20.
//  Copyright © 2020 Maksym Sabadyshyn. All rights reserved.
//

import Foundation

class DayThree {
    var currentSum = 0
    var biggestSum = 0
    func maxSubArray(_ nums: [Int]) -> Int {
        for num in nums {
            currentSum = currentSum + num > 0 ? currentSum + num : 0
            biggestSum = biggestSum > currentSum ? biggestSum : currentSum
        }
        return biggestSum
    }
}
