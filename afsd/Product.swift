//
//  Product.swift
//  afsd
//
//  Created by Nihar Patel on 02/12/2019.
//  Copyright © 2019 Nihar Patel. All rights reserved.
//

import Foundation

class Product {
  var name: String?
  var cellImageName: String?
  var fullscreenImageName: String?
  
  init(name: String, cellImageName: String, fullscreenImageName: String) {
    self.name = name
    self.cellImageName = cellImageName
    self.fullscreenImageName = fullscreenImageName
  }
}
