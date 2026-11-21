import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var days: [Int] = []
        
    for i in 0...(progresses.count - 1) {
    let remaining = 100 - progresses[i]
        let speed = speeds[i]

        let day = (remaining + speed - 1) / speed

        days.append(day)
    }

    var result: [Int] = []
    var currentDay = days[0]
    var count = 1

    for i in 1..<days.count {
        if days[i] <= currentDay {
            count += 1
        } else {
            result.append(count)
            currentDay = days[i]
            count = 1
        }
    }

    result.append(count)

    return result
}