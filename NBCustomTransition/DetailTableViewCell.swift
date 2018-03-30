//
//  DetailTableViewCell.swift
//  NBCustomTransition
//
//  Created by Bichon, Nicolas on 2018-03-29.
//  Copyright © 2018 Nicolas Bichon. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    // MARK: - Properties

    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var personLabel: UILabel!

    // MARK: - Setup

    func setupTransition(for personIndex: Int, at index: Int) {
        personImageView.hero.id = "person-\(personIndex)-\(index)"
        personImageView.hero.modifiers = [.arc]

        personLabel.hero.modifiers = [.fade]
    }
}
