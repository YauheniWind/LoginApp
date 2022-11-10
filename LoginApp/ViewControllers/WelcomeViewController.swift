//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Евгений  Гравдин  on 04/11/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
  
  @IBOutlet weak var welcomeLabel: UILabel!
  
  var welcomeValue = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    welcomeLabel.text = "Welcome, \(welcomeValue)!"
    
  }
  
}
