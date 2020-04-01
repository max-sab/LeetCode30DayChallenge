//
//  main.swift
//  LeetCode30DaysChallenge
//
//  Created by Maksym Sabadyshyn on 4/1/20.
//  Copyright © 2020 Maksym Sabadyshyn. All rights reserved.
//

import Foundation

class Solution1 {
    var res: Int?
    var usedNumbers = Set<Int>()

    func singleNumber(_ nums: [Int]) -> Int {
        for num in nums {
            if let res = res {
                if res == num {
                    self.res = nil
                    usedNumbers.insert(num)
                }
            } else {
                if !usedNumbers.contains(num) {
                    self.res = num
                }
                usedNumbers.insert(num)
            }
        }
        if res == nil {
            res = nums.filter{!usedNumbers.contains($0)}.first
        }
        return res!
    }
}
