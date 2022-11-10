//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Евгений  Гравдин  on 08/11/2022.
//

import UIKit

class AboutMeViewController: UIViewController {
  
  @IBOutlet weak var informationTextView: UITextView!
  
  var about = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    informationTextView.text = about
  }
  
}
