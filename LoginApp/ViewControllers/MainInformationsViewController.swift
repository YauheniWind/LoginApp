//
//  MainInformationsViewController.swift
//  LoginApp
//
//  Created by Евгений  Гравдин  on 08/11/2022.
//

import UIKit

class MainInformationsViewController: UIViewController {

  @IBOutlet weak var mainNameLabel: UILabel!
  
  @IBOutlet weak var photoImageView: UIImageView!
  
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var surnameLabel: UILabel!
  @IBOutlet weak var ageLabel: UILabel!
  @IBOutlet weak var employmentLabel: UILabel!
  
  private let user = User.information().userInformation
  
  override func viewDidLoad() {
        super.viewDidLoad()
    photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
    photoImageView.layer.borderWidth = 8
    photoImageView.layer.borderColor = UIColor.purple.cgColor
    
    mainNameLabel.text = user.userName
    nameLabel.text = user.userName
    surnameLabel.text = user.userSurname
    ageLabel.text = String(user.userAge)
    employmentLabel.text = user.userEmployment
    }
    
}
