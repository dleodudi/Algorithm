import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result: [Int] = []
    var months: [String: Int] = [:]

    for term in terms {
        let part = term.split(separator: " ")

        let type = String(part[0])
        let month = Int(part[1])!

        months[type] = month
    }

    let todayParts = today.split(separator: ".")
    let todayDays =
        Int(todayParts[0])! * 12 * 28 +
        Int(todayParts[1])! * 28 +
        Int(todayParts[2])!

    for (index, privacy) in privacies.enumerated() {
        let part = privacy.split(separator: " ")

        let time = part[0]
        let type = String(part[1])

        let validMonths = months[type]!

        let dateParts = time.split(separator: ".")

        let year = Int(dateParts[0])!
        let month = Int(dateParts[1])!
        let day = Int(dateParts[2])!

        let privacyDays = year * 12 * 28 + month * 28 + day

        let expirationDays = privacyDays + validMonths * 28

        if todayDays >= expirationDays {
            result.append(index + 1)
        }

    }

    return result
}