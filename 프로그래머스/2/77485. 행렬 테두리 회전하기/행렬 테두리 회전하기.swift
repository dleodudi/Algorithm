import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var matrix = Array(
        repeating: Array(repeating: 0, count: columns),
        count: rows
    )

    var number = 1

    for i in 0..<rows {
        for j in 0..<columns {
            matrix[i][j] = number
            number += 1
        }
    }

    var result: [Int] = []

    // 회전 명령 하나씩 처리
    for query in queries {
        let startRow = query[0] - 1
        let startCol = query[1] - 1
        let endRow = query[2] - 1
        let endCol = query[3] - 1

        // 4. 왼쪽 위 숫자 보관
        let temp = matrix[startRow][startCol]
        var minValue = temp

        // 5. 왼쪽 변: 아래에서 위로 값 복사
        for row in startRow..<endRow {
            matrix[row][startCol] = matrix[row + 1][startCol]
            minValue = min(minValue, matrix[row][startCol])
        }

        // 6. 아래쪽 변: 오른쪽에서 왼쪽으로 값 복사
        for col in startCol..<endCol {
            matrix[endRow][col] = matrix[endRow][col + 1]
            minValue = min(minValue, matrix[endRow][col])
        }

        // 7. 오른쪽 변: 위에서 아래로 값 복사
        for row in stride(from: endRow, to: startRow, by: -1) {
            matrix[row][endCol] = matrix[row - 1][endCol]
            minValue = min(minValue, matrix[row][endCol])
        }

        // 8. 위쪽 변: 왼쪽에서 오른쪽으로 값 복사
        for col in stride(from: endCol, to: startCol + 1, by: -1) {
            matrix[startRow][col] = matrix[startRow][col - 1]
            minValue = min(minValue, matrix[startRow][col])
        }

        // 9. 보관한 숫자를 빈자리에 넣기
        matrix[startRow][startCol + 1] = temp

        // 10. 이번 회전의 최솟값 저장
        result.append(minValue)
    }

    return result
}