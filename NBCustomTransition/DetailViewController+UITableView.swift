//
//  DetailViewController+UITableView.swift
//  NBCustomTransition
//
//  Created by Bichon, Nicolas on 2018-03-29.
//  Copyright © 2018 Nicolas Bichon. All rights reserved.
//

import UIKit

// MARK: - UITableViewDataSource
extension DetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailIdentifier", for: indexPath) as! DetailTableViewCell
        cell.selectionStyle = .none
        if let selectedIndexPath = selectedIndexPath {
            cell.setupTransition(for: indexPath.row, at: selectedIndexPath.row)
        }
        return cell
    }
}
