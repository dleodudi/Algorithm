import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var a: [Int] = []
    
    for i in (0...numbers.count - 2) {
        for j in (i+1)...(numbers.count - 1) {
            let sum = numbers[i] + numbers[j]
            if a.contains(sum) {
                continue
            } else {
                a.append(sum)
            }
        }
    }
    
    let result: [Int] = a.sorted()
    
    return result    
}