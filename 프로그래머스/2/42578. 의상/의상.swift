import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict: [String: Int] = [:]
        
    for cloth in clothes {
        let category = cloth[1]
        dict[category, default: 0] += 1
    }

    var answer = 1

    for count in dict.values {
        answer *= (count + 1)
    }

    return answer - 1
}