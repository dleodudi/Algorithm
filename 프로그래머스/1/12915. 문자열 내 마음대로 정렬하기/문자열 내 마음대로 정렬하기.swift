func solution(_ strings:[String], _ n:Int) -> [String] {
    let result = strings.sorted { a, b in
        let charA = Array(a)[n]
        let charB = Array(b)[n]

        if charA == charB {
            return a < b
        }

        return charA < charB
    }

    return result
}