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
    var candidates = Set<Int>()

    func singleNumber(_ nums: [Int]) -> Int {
        for num in nums {
            if let res = res {
                if res == num {
                    self.res = nil
                    usedNumbers.insert(num)
                    candidates.remove(num)
                } else if candidates.contains(num) {
                    candidates.remove(num)
                } else {
                    candidates.insert(num)
                }
            } else {
                if !usedNumbers.contains(num) {
                    self.res = num
                    candidates.remove(num)
                }
                usedNumbers.insert(num)
            }
        }

        if !candidates.isEmpty {
            res = candidates.first
        }

        print(candidates)

        //forced unwrapped because we always have result by task definition
        return res!
    }
    
}


