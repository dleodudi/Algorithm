import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    // 튜플 배열
    var queue: [(index: Int, priority: Int)] = []

    for i in 0..<priorities.count {
        queue.append((index: i, priority: priorities[i]))
    }

    var executionCount = 0

    while !queue.isEmpty {
        let current = queue.removeFirst() // 맨 앞 원소 제거 및 반환

        let hashHigherPriority = queue.contains { // contains { 조건 } 조건을 만족하는 원소 존재 여부
            $0.priority > current.priority
        }

        if hashHigherPriority {
            queue.append(current)
        } else {
            executionCount += 1

            if current.index == location {
                return executionCount
            }
        }
    }

    return executionCount
}