import Foundation

func solution(_ s:String) -> Int{
//     var stack: [Character] = []
        
//     for i in s {
//         if stack.last == i {
//             _ = stack.popLast()
//         } else {
//             stack.append(i)
//         }
//     }
        
//     return stack.isEmpty ? 1 : 0
    
    // 정확성 테스트 6, 14, 15 실패해서 개선
    var stack: [UInt8] = []

    for char in s.utf8 {
        if stack.last == char {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }

    return stack.isEmpty ? 1 : 0
}