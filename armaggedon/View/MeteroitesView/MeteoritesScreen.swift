//
//  MeteoritesScreen.swift
//  armaggedon
//
//  Created by Kirill Drozdov on 21.04.2022.
//

import UIKit

class MeteoritesScreen: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setColor()
  }

  private func setColor(){
    self.backgroundColor = .blue
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
