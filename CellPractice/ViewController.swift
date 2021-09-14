//
//  ViewController.swift
//  CellPractice
//
//  Created by 三浦　一真 on 2021/09/14.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DisplayCellType.allCases.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = DisplayCellType(rawValue: indexPath.row)!
        let cell = tableView.dequeueReusableCell(withIdentifier: cellType.identifier) as! CustomCell & UITableViewCell
        cell.setItem(cellType.title)
        return cell
    }
}
