//
//  SecondViewController.swift
//  testMyApp
//
//  Created by Xiaofei Lu on 2020/6/10.
//  Copyright © 2020 Xiaofei Lu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  private var weekdayList: [String] = []

  override func viewDidLoad() {
    setupTableviewData()
    view.backgroundColor = .white

    let button = UIButton(frame: CGRect(x: 20, y: 100, width: 25, height: 25))
    button.contentHorizontalAlignment = .fill;
    button.contentVerticalAlignment = .fill
    button.setImage(UIImage(named: "back"), for: .normal)
    button.addTarget(self, action: #selector(didClickOnButton), for: .touchUpInside)
    view.addSubview(button)

    let titleView = UILabel()
    titleView.translatesAutoresizingMaskIntoConstraints = false
    titleView.text = "The weekdays"
    titleView.backgroundColor = .white
    titleView.textColor = .black
    titleView.textAlignment = .center
    view.addSubview(titleView)

    let tableView = UITableView()
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.dataSource = self
    tableView.estimatedRowHeight = 40
    view.addSubview(tableView)

    titleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
    titleView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    titleView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

    tableView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 20).isActive = true
    tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true

  }

  private func setupTableviewData() {
    weekdayList.append("Monday")
    weekdayList.append("Tuesday")
    weekdayList.append("Wednesday")
    weekdayList.append("Thursday")
    weekdayList.append("Friday")
  }

  @objc private func didClickOnButton() {
    self.dismiss(animated: true, completion: nil)
  }

}

extension SecondViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.weekdayList.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: "MyTestCell")

    cell.textLabel?.text = weekdayList[indexPath.row]
    return cell
  }
}
