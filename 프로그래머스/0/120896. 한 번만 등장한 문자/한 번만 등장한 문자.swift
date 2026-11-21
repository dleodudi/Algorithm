import Foundation

func solution(_ s:String) -> String {
    var dict: [String: Int] = [:]
    var strArr: [String] = []
        
    for char in s {
        dict[String(char), default: 0] += 1
    }
        
    for (str, value) in dict {
        if value == 1 {
            strArr.append(str)
        }
    }
        
    return strArr.sorted().joined()
}