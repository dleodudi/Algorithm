import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []

    for command in commands {
        let i = command[0]
        let j = command[1]
        let k = command[2]

//            var temp: [Int] = []
//            
//            for index in (i - 1)...(j - 1) {
//                temp.append(array[index])
//            }
//            
//            temp.sort()
        let temp = Array(array[(i - 1)...(j - 1)]).sorted()

        result.append(temp[k - 1])
    }

    return result
}