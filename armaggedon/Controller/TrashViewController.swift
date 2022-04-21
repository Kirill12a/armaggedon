//
//  TrashViewController.swift
//  armaggedon
//
//  Created by Kirill Drozdov on 21.04.2022.
//

import SnapKit
import UIKit

class TrashViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


  override func viewDidLoad() {
    view.backgroundColor = .white
    setContraintTableView()
    tableViewTest.delegate = self
    tableViewTest.dataSource = self
    
  }

  private var tableViewTest: UITableView = {
    var table = UITableView()
    table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    return table
  }()

  private func setContraintTableView(){
    view.addSubview(tableViewTest)
    tableViewTest.snp.makeConstraints { make in
      make.width.equalToSuperview()
      make.height.equalToSuperview()
    }
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = "Kiko"
    return cell
  }

}
