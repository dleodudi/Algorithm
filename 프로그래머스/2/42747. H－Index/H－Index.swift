import Foundation

func solution(_ citations:[Int]) -> Int {
    let array = citations.sorted()
    var answer: Int = 0

    for i in 0..<array.count {
        let h = array.count - i

        if array[i] >= h {
            answer = h
            break
        }
    }

    return answer
}