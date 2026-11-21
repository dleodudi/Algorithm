import Foundation

func solution(_ s:String) -> Bool {
    var count: Int = 0
        
    for i in s {
        if i == "(" {
            count += 1
        } else if i == ")" {
            if count == 0 {
                return false
            }
            count -= 1
        }
    }
        
    return count == 0
    
//     var stack: [Character] = []
        
//     for char in s {
//         if char == "(" {
//             stack.append(char)
//         } else {
//             if stack.isEmpty {
//                 return false
//             }
//             stack.popLast()
//         }
//     }
        
//     return stack.isEmpty
}