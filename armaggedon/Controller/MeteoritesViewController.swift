//
//  MeteoritesViewController.swift
//  armaggedon
//
//  Created by Kirill Drozdov on 19.04.2022.
//

import UIKit
import Realm


class MeteoritesViewController: UIViewController
{

  override func loadView() {
    self.view = MeteoritesScreen()
  }

  override func viewDidLoad()
  {
    super.viewDidLoad()
//    view.backgroundColor = .red
  }
}


