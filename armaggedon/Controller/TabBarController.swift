//
//  TabBarController.swift
//  armaggedon
//
//  Created by Kirill Drozdov on 21.04.2022.
//

import Foundation
import UIKit


class TabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let meteorVC         =     MeteoritesViewController()
    let trashVC          =     TrashViewController()

    viewControllers = [
      setUpNavigationController(title: "Астероиды", image: UIImage(systemName: "network"), rootViewController: meteorVC),
      setUpNavigationController(title: "Уничтожение", image: UIImage(systemName: "trash"), rootViewController: trashVC)    ]
  }

  private func setUpNavigationController(title: String, image: UIImage?, rootViewController: UIViewController) -> UIViewController {
    let navigationViewController = UINavigationController(rootViewController: rootViewController)
    navigationViewController.tabBarItem.image = image
    navigationViewController.tabBarItem.title = title
    return navigationViewController
  }
}
