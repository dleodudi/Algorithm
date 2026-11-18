import Foundation

func solution(_ strArr:[String]) -> Int {
    var dict: [Int: Int] = [:]
    
    for i in 0...(strArr.count - 1) {
        let count = strArr[i].count
        dict[count, default: 0] += 1
    }
    
    var maxStrCnt = 0
    var answer = 0
    
    for (key, value) in dict {
        if value > answer {
            answer = value
        }
    }
    
    return answer
}