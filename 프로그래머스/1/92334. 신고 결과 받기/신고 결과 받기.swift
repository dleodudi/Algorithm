import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    // 중복 신고 제거
    let uniqueReports = Set(report)

    // 신고당한 횟수 저장
    var reportCount: [String: Int] = [:]

    for item in uniqueReports {
        let part = item.split(separator: " ")
        let reported = String(part[1])

        reportCount[reported, default: 0] += 1
    }

    // 신고자가 받을 메일 개수 저장
    var mailCount: [String: Int] = [:]

    for item in uniqueReports {
        let part = item.split(separator: " ")

        let reporter = String(part[0])
        let reported = String(part[1])

        if reportCount[reported, default: 0] >= k {
            mailCount[reporter, default: 0] += 1
        }
    }

    // id_list 순서대로 결과 반환
    return id_list.map {
        mailCount[$0, default: 0]
    }
}