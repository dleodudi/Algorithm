import Foundation

func solution(_ array:[Int]) -> Int {
    var dict: [Int: Int] = [0: 0]
    
    // 숫자별 등장 횟수 저장
    // for number in array {
    //     if let count == dict[number] {
    //         dict[number] = count + 1
    //     } else {
    //         dict[number] = 1
    //     }
    // }
    
    for i in array {
        dict[i, default: 0] += 1
    }
    
    // 가장 많이 등장한 횟수 찾기
    var maxCount = 0
    var answer = -1
    var isDuplicate = false
    
    for(key, value) in dict {
        if value > maxCount {
            maxCount = value
            answer = key
            isDuplicate = false
        } else if value == maxCount {
            isDuplicate = true
        }
    }
    
    return isDuplicate ? -1 : answer
}