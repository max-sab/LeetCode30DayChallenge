//
//  DayThree.swift
//  LeetCode30DaysChallenge
//
//  Created by Maksym Sabadyshyn on 4/3/20.
//  Copyright © 2020 Maksym Sabadyshyn. All rights reserved.
//

import Foundation

struct DayThree {
    func maxSubArray(_ nums: [Int]) -> Int {
        var currentSum = 0
        var biggestSum = 0

        if nums.count > 0 {

            //force unwrapping because nums.count > 0 here
            if nums.max()! < 0 {
                return nums.max()!
            }

            for num in nums {
                currentSum = currentSum + num > 0 ? currentSum + num : 0
                biggestSum = biggestSum > currentSum ? biggestSum : currentSum
            }
        }
        return biggestSum
    }
}
