//
//  main.swift
//  LeetCode30DaysChallenge
//
//  Created by Maksym Sabadyshyn on 4/1/20.
//  Copyright © 2020 Maksym Sabadyshyn. All rights reserved.
//

import Foundation

struct DayOne {
    
    func singleNumber(_ nums: [Int]) -> Int {
        
        var candidates = Set<Int>()
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


