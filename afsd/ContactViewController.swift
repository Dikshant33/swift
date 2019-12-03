//
//  ContactViewController.swift
//  afsd
//
//  Created by Nihar Patel on 02/12/2019.
//  Copyright © 2019 Nihar Patel. All rights reserved.
//

import Foundation
import UIKit

class ContactViewController: UIViewController {
  
  @IBOutlet weak var scrollView: UIScrollView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(scrollView)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
//    if #available(iOS 11.0, *) {
//      scrollView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.frame.width, height: view.frame.height - view.safeAreaInsets.bottom - view.safeAreaInsets.top)
//    } else {
      scrollView.frame = CGRect(x: 0, y: topLayoutGuide.length, width: view.frame.width, height: view.frame.height - topLayoutGuide.length - bottomLayoutGuide.length)
//    }
    
    scrollView.contentSize = CGSize(width: self.view.frame.width, height: 800)
  }
}
