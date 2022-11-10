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
  
  var user: User!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
    photoImageView.layer.borderWidth = 8
    photoImageView.layer.borderColor = UIColor.purple.cgColor
    
    mainNameLabel.text = user.information.name
    nameLabel.text = user.information.name
    surnameLabel.text = user.information.surname
    ageLabel.text = String(user.information.age)
    employmentLabel.text = user.information.employment
    
  }
  
}
