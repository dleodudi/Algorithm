func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    let sortArr = arr.sorted()
    
    
    for i in 0...sortArr.count-1 {
        let a = sortArr[i] % divisor
        
        if a == 0 {
            result.append(sortArr[i])
        }
    }
    
    if result.count == 0 {
        result.append(-1)
    }
    
    return result
}