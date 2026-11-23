import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var result = players
    var position: [String: Int] = [:]

    for (index, player) in players.enumerated() {
        position[player] = index
    }

    for calling in callings {
        let currentIndex = position[calling]! // 3
        let frontIndex = currentIndex - 1 // 2

        let frontPlayer = result[frontIndex] // poe

        result.swapAt(currentIndex, frontIndex)

        position[calling] = frontIndex
        position[frontPlayer] = currentIndex
    }

    return result
}