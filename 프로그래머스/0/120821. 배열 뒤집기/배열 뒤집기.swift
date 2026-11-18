import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result: [Int] = []
    
    for num in num_list.reversed() {
        result.append(num)
    }
    
    return result
}