//
//  main.swift
//  LeetCode30DaysChallenge
//
//  Created by Maksym Sabadyshyn on 4/1/20.
//  Copyright © 2020 Maksym Sabadyshyn. All rights reserved.
//

import Foundation

class DayOne {
    var candidates = Set<Int>()

    func singleNumber(_ nums: [Int]) -> Int {

        nums.forEach {
            if candidates.contains($0) {
                candidates.remove($0)
            } else {
                candidates.insert($0)
            }
        }
        //forced unwrapped because we always have result by task definition
        return candidates.first!
    }
    
}


