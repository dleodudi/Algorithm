import Foundation

func solution(_ s:String) -> Bool {
    
    var pCnt: Int = 0
    var yCnt: Int = 0
    
    // for i in Array(s.lowercased()) {
    //     if i == "p" {
    //         pCnt += 1
    //     } else if i == "y" {
    //         yCnt += 1
    //     }
    // }
    
    for char in s.lowercased() {
        if char == "p" {
            pCnt += 1
        } else if char == "y" {
            yCnt += 1
        }
    }
    
    // return pCnt == yCnt ? true : false
    return pCnt == yCnt
}