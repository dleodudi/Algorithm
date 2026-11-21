func solution(_ n:Int64) -> [Int] {
    let str = String(n)
    var result: [Int] = []
    
    for char in str.reversed() {
        if let a = Int(String(char)) {
            result.append(a)
        }
    }
    
    return result
}