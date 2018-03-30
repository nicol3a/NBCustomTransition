//
//  DetailViewController.swift
//  NBCustomTransition
//
//  Created by Bichon, Nicolas on 2018-03-28.
//  Copyright © 2018 Nicolas Bichon. All rights reserved.
//

import UIKit
import Hero

class DetailViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var priceView: UIView!
    @IBOutlet weak var tableView: UITableView!

    var selectedIndexPath: IndexPath?

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        setupTransition()
    }

    // MARK: - Setup

    private func setupTableView() {
        tableView.register(ListTableViewCell.self, forCellReuseIdentifier: "ListCell")
    }

    private func setupTransition() {
        guard let indexPath = selectedIndexPath else {
            return
        }

        containerView.hero.id = "container-\(indexPath.row)"
        iconView.hero.id = "icon-\(indexPath.row)"
        titleLabel.hero.id = "title-\(indexPath.row)"
        subtitleLabel.hero.id = "subtitle-\(indexPath.row)"
        priceView.hero.id = "price-\(indexPath.row)"

        containerView.hero.modifiers = [.arc]
        iconView.hero.modifiers = [.arc]
        titleLabel.hero.modifiers = [.arc]
        subtitleLabel.hero.modifiers = [.arc]
        priceView.hero.modifiers = [.arc]
    }

    // MARK: - Action

    @IBAction func closeButtonTapped(sender: AnyObject?) {
        dismiss(animated: true, completion: nil)
    }
}
