//: Playground - noun: a place where people can play

import Foundation



/**
 * here I will write an exaple based on your sugesstion from blog post http://saleh.im/enum/
 *
 */

public enum Season : String {
    case winter, spring, summer, fall
    static func randomSeason() -> Season {
        
        let season = [Season.winter, Season.spring, Season.summer, Season.fall]
        let lower : UInt32 = 0
        let upper : UInt32 = 3
        let randomNumber = arc4random_uniform(upper - lower) + lower
        return season[Int(randomNumber)]
    }
}

extension Season : CustomStringConvertible {
    public var description: String {
        get {
            switch self {
            case .winter:
                return "WINTER"
            case .spring:
                return "SPRING"
            case .summer:
                return "SUMMER"
            case .fall:
                return "FALL"
            }
        }
    }
}


// assume the random generated season will be .summer else it's unExpected result..
let summer = Season.randomSeason()
switch summer {
case .summer:
    print("cool it's summer season!")
default:
    print("unExpected result")
}









