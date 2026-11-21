import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    var q1 = queue1
    var q2 = queue2

    var q1Sum = q1.reduce(0, +)
    var q2Sum = q2.reduce(0, +)

    if q1Sum == q2Sum {
        return 0
    }

    let total = q1Sum + q2Sum

    if total % 2 != 0 {
        return -1
    }

    let target = total / 2
    // var temp: Int = 0
    var head1 = 0
    var head2 = 0
    var count = 0

    let maxCount = queue1.count * 4

    // while true {
//        while maxCount > count {
//            if q1Sum > target {
//                temp = q1.removeFirst()
//                q1Sum -= temp
//                q2.append(temp)
//                q2Sum += temp
//                count += 1
//            } else if q2Sum > target {
//                temp = q2.removeFirst()
//                q2Sum -= temp
//                q1.append(temp)
//                q1Sum += temp
//                count += 1
//            }
//            
//            if q1Sum == q2Sum {
//                return count
//            }
//        }
    while count < maxCount {

        if q1Sum > target {
            let temp = q1[head1]
            head1 += 1

            q1Sum -= temp
            q2.append(temp)
            q2Sum += temp
        } else {
            let temp = q2[head2]
            head2 += 1

            q2Sum -= temp
            q1.append(temp)
            q1Sum += temp
        }

        count += 1

        if q1Sum == q2Sum {
            return count
        }
    }

    return -1
}