//
//  DayTwo.swift
//  LeetCode30DaysChallenge
//
//  Created by Maksym Sabadyshyn on 4/2/20.
//  Copyright © 2020 Maksym Sabadyshyn. All rights reserved.
//

import Foundation

struct DayTwo {
    func isHappy(_ n: Int) -> Bool {
        var sum = 0
        var prevSums = Set<Int>()
        var digits = getDigits(for: n)

        while sum != 1 {
            sum = 0
            digits.forEach {
                digit in
                sum += Int(pow(Double(digit), 2))
            }
            if prevSums.contains(sum) {
                return false
            }
            prevSums.insert(sum)
            digits = getDigits(for: sum)
        }

        return true
    }

    func getDigits(for num: Int) -> [Int] {
        var currentNum = num
        var digits = [Int]()

        if num < 10 {
            return [num]
        }
        while currentNum >= 10 {
            digits.append(currentNum % 10)
            currentNum /= 10
        }
        digits.append(currentNum % 10)
        return digits
    }
}
