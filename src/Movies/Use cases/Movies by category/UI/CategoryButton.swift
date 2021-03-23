//
//  CategoryButton.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

import UIKit

class CategoryButton: UIButton {
  var category: Category
  
  required init(category: Category) {
    self.category = category
    super.init(frame: .zero)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
