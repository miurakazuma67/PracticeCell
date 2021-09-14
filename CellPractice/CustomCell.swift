//
//  CustomCell.swift
//  CellPractice
//
//  Created by 三浦　一真 on 2021/09/14.
//

import UIKit

protocol CustomCell {
    func setItem(_ title: String)
}

final class StandardCell: UITableViewCell, CustomCell {
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    func setItem(_ title: String) {
        self.titleLabel.text = title
    }
}

final class MemoCell: UITableViewCell, CustomCell {

    @IBOutlet private weak var titleLabel: UILabel!
    
    func setItem(_ title: String) {
        self.titleLabel.text = title
    }
}
