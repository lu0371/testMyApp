//
//  ViewController.swift
//  testMyApp
//
//  Created by Xiaofei Lu on 2020/6/10.
//  Copyright © 2020 Xiaofei Lu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  private let secondViewController = SecondViewController()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = .gray
    setupViews()
  }

  private func setupViews() {
    let viewA = UIView()
    viewA.frame = CGRect(x: 100, y: 200, width: 150, height: 75)
    viewA.backgroundColor = .red
    view.addSubview(viewA)

    let viewB = UIView()
    viewB.translatesAutoresizingMaskIntoConstraints = false

    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = UIImage(named: "venues")
    imageView.contentMode = .scaleAspectFill
    viewB.addSubview(imageView)
    view.addSubview(viewB)

    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.backgroundColor = .white
    button.setTitle("Next", for: .normal)
    button.setTitleColor(.black, for: .normal)
    button.addTarget(self, action: #selector(clickTheButton), for: .touchUpInside)
    view.addSubview(button)

    imageView.centerXAnchor.constraint(equalTo: viewB.centerXAnchor).isActive = true
    imageView.centerYAnchor.constraint(equalTo: viewB.centerYAnchor).isActive = true
    imageView.widthAnchor.constraint(equalTo: viewB.widthAnchor).isActive = true
    imageView.heightAnchor.constraint(equalTo: viewB.heightAnchor).isActive = true

    viewB.topAnchor.constraint(equalTo: viewA.bottomAnchor, constant: 50).isActive = true
    viewB.leadingAnchor.constraint(equalTo: viewA.leadingAnchor).isActive = true
    viewB.trailingAnchor.constraint(equalTo: viewA.trailingAnchor).isActive = true
    viewB.heightAnchor.constraint(equalTo: viewA.heightAnchor).isActive = true

    button.topAnchor.constraint(equalTo: viewB.bottomAnchor, constant: 30).isActive = true
    button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
    button.widthAnchor.constraint(equalToConstant: 100).isActive = true
    button.heightAnchor.constraint(equalToConstant: 50).isActive = true

  }

  @objc private func clickTheButton() {
    secondViewController.modalPresentationStyle = .fullScreen
    present(secondViewController, animated: true, completion: nil)
  }
}

