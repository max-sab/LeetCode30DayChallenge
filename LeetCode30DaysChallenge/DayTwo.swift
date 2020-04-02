//
//  DayTwo.swift
//  LeetCode30DaysChallenge
//
//  Created by Maksym Sabadyshyn on 4/2/20.
//  Copyright © 2020 Maksym Sabadyshyn. All rights reserved.
//

import Foundation

class DayTwo {
    var sum = 0
    var prevSums = [Int]()
    func isHappy(_ n: Int) -> Bool {
        var digits = getDigits(for: n)
        digits.forEach {
            digit in
            sum += Int(pow(Double(digit), 2))
        }
        prevSums.append(sum)

        while sum != 1 {
            digits = getDigits(for: sum)
            sum = 0
            digits.forEach {
                digit in
                sum += Int(pow(Double(digit), 2))
            }
            if prevSums.contains(sum) {
                return false
            }
            prevSums.append(sum)

        }

        return true
    }

    func getDigits(for num: Int) -> [Int] {
        var currentNum = num
        var digits = [Int]()

        if num < 10 {
            return [num]
        }
        repeat {
            digits.append(currentNum % 10)
            currentNum /= 10
        } while currentNum >= 10
        digits.append(currentNum % 10)
        return digits
    }
}
