import Foundation

func solution(_ array:[Int]) -> [Int] {
    var result: [Int] = []
    var bigValue: Int = array[0]
    var bigIndex: Int = 0
    
    for i in (0...array.count - 1) {
        if array[i] > bigValue {
            bigValue = array[i]
            bigIndex = i
        }
    }
    
    result.append(bigValue)
    result.append(bigIndex)
    
    return result
}