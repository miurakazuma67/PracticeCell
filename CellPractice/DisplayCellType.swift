//
//  DisplayCellType.swift
//  CellPractice
//
//  Created by 三浦　一真 on 2021/09/14.
//

enum DisplayCellType: Int, CaseIterable {
    case subject
    case time
    case memo

    var identifier: String {
        switch self {
        case .subject, .time:
            return "StandardCell"
        case .memo:
            return "MemoCell"
        }
    }

    var title: String {
        switch self {
        case .subject:
            return "教科名"
        case .time:
            return "学習時間"
        case .memo:
            return "メモ"
        }
    }
}
