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

    viewControllers = [
      setUpNavigationController(title: "Преподы", image: UIImage(systemName: "person.3.sequence"), rootViewController: meteorVC),
      setUpNavigationController(title: "Расписание", image: UIImage(systemName: "tablecells"), rootViewController: meteorVC)    ]
  }

  private func setUpNavigationController(title: String, image: UIImage?, rootViewController: UIViewController) -> UIViewController {
    let navigationViewController = UINavigationController(rootViewController: rootViewController)
    navigationViewController.tabBarItem.image = image
    navigationViewController.tabBarItem.title = title
    return navigationViewController
  }
}
