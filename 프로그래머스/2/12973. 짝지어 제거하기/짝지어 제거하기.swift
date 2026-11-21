import Foundation

func solution(_ s:String) -> Int{
    var stack: [Character] = []
        
    for i in s {
        if stack.last == i {
            // popLast() -> 빈 배열 안전하게 처리하므로 Optional 반환
            // removeLiast -> 배열이 비어있지 않다는 전제에서 동작
            // _ = stack.popLast()
            stack.removeLast()
        } else {
            stack.append(i)
        }
    }
        
    return stack.isEmpty ? 1 : 0
    
    // 정확성 테스트 6, 14, 15 실패해서 개선
//     var stack: [UInt8] = []

//     for char in s.utf8 {
//         if stack.last == char {
//             stack.removeLast()
//         } else {
//             stack.append(char)
//         }
//     }

//     return stack.isEmpty ? 1 : 0
}