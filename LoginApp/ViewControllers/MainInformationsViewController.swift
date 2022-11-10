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
  
  var mainName = ""
  var surname = ""
  var age = ""
  var employment = ""
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
    photoImageView.layer.borderWidth = 8
    photoImageView.layer.borderColor = UIColor.purple.cgColor
    
    mainNameLabel.text = mainName
    nameLabel.text = mainName
    surnameLabel.text = surname
    ageLabel.text = age
    employmentLabel.text = employment
    
  }
  
}
