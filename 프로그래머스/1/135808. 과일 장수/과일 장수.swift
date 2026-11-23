import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
     var result = 0
        
    let score1 = score.sorted(by: >)

    for i in stride(
        from: m - 1,
        to: score1.count,
        by: m
    ) {
        result += score1[i] * m
    }

    return result
}