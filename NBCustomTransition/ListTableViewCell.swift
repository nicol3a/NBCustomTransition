//
//  ListTableViewCell.swift
//  NBCustomTransition
//
//  Created by Bichon, Nicolas on 2018-03-28.
//  Copyright © 2018 Nicolas Bichon. All rights reserved.
//

import UIKit
import Hero

class ListTableViewCell: UITableViewCell {

    // MARK: - Properties

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var priceView: UIView!

    @IBOutlet weak var person1ImageView: UIImageView!
    @IBOutlet weak var person2ImageView: UIImageView!
    @IBOutlet weak var person3ImageView: UIImageView!

    var rowIndex: Int = 0 {
        didSet {
            setupTransition(for: rowIndex)
        }
    }

    // MARK: - Setup

    private func setupTransition(for index: Int) {
        containerView.hero.id = "container-\(index)"
        iconView.hero.id = "icon-\(index)"
        titleLabel.hero.id = "title-\(index)"
        subtitleLabel.hero.id = "subtitle-\(index)"
        priceView.hero.id = "price-\(index)"

        containerView.hero.modifiers = [.arc]
        iconView.hero.modifiers = [.arc]
        titleLabel.hero.modifiers = [.arc]
        subtitleLabel.hero.modifiers = [.arc]
        priceView.hero.modifiers = [.arc]

        person1ImageView.hero.id = "person-0-\(index)"
        person2ImageView.hero.id = "person-1-\(index)"
        person3ImageView.hero.id = "person-2-\(index)"

        person1ImageView.hero.modifiers = [.arc]
        person1ImageView.hero.modifiers = [.arc]
        person1ImageView.hero.modifiers = [.arc]
    }
}
