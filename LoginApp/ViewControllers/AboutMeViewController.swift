//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Евгений  Гравдин  on 08/11/2022.
//

import UIKit

class AboutMeViewController: UIViewController {

  @IBOutlet weak var informationTextView: UITextView!
  
  private let user = User.information().userInformation
  override func viewDidLoad() {
        super.viewDidLoad()

    informationTextView.text = user.userBio
    }
    
}
