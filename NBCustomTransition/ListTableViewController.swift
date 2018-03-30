//
//  ListTableViewController.swift
//  NBCustomTransition
//
//  Created by Bichon, Nicolas on 2018-03-28.
//  Copyright © 2018 Nicolas Bichon. All rights reserved.
//

import UIKit
import Hero

class ListTableViewController: UITableViewController {

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()
        setupTableView()
    }

    // MARK: - Setup

    private func setupNavigationBar() {
        navigationController?.navigationBar.barTintColor = UIColor(red: 30.0/255.0, green: 37.0/255.0, blue: 55.0/255.0, alpha: 1.0)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }

    private func setupTableView() {
        tableView.register(ListTableViewCell.self, forCellReuseIdentifier: "ListCell")
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListIdentifier", for: indexPath) as! ListTableViewCell
        cell.rowIndex = indexPath.row
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? DetailViewController,
            let cell = sender as? ListTableViewCell,
            let indexPath = tableView.indexPath(for: cell) else {
                return
        }

        translateVisibleCellsExcept(at: indexPath)

        viewController.selectedIndexPath = indexPath
    }

    private func translateVisibleCellsExcept(at indexPath: IndexPath) {
        let rectOfCellInTableView = tableView.rectForRow(at: indexPath)
        let rectOfCellInSuperview = tableView.convert(rectOfCellInTableView, to: tableView.superview)

        let upTranslationDistance = rectOfCellInSuperview.origin.y + rectOfCellInSuperview.size.height
        let downTranslationDistance = UIScreen.main.bounds.height - rectOfCellInSuperview.origin.y

        for cell in tableView.visibleCells as! [ListTableViewCell] {
            guard let currentIndexPath = tableView.indexPath(for: cell) else { return }

            navigationController?.navigationBar.hero.modifiers = [.translate(y:-upTranslationDistance)]

            if currentIndexPath.row < indexPath.row {
                cell.containerView.hero.modifiers = [.translate(y:-upTranslationDistance)]
            } else {
                cell.containerView.hero.modifiers = [.translate(y:downTranslationDistance)]
            }
        }
    }
}
