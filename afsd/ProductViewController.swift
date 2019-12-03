//
//  ProductViewController.swift
//  afsd
//
//  Created by Nihar Patel on 02/12/2019.
//  Copyright © 2019 Nihar Patel. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
//@IBOutlet var productImageView: UIImageView!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet var productNameLabel: UILabel!
    
    
    //@IBOutlet weak var productImageView: UIImageView!
    
  var product: Product?

  override func viewDidLoad() {
    super.viewDidLoad()
    
    productNameLabel.text = product?.name
    
    if let imageName = product?.fullscreenImageName {
      productImageView.image = UIImage(named: imageName)
    }
  }

  @IBAction func addToCartButtonDidTap(_ sender: AnyObject) {
    print("Add to cart successfully")
  }
}
