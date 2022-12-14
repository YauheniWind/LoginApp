//
//  ViewController.swift
//  LoginApp
//
//  Created by Евгений  Гравдин  on 04/11/2022.
//

import UIKit

class LoginViewController: UIViewController {
  
  @IBOutlet weak var loginTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  private let user = User.getInformation()
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let tabBarVC = segue.destination as? UITabBarController else { return }
    guard let viewControllers = tabBarVC.viewControllers else { return }
    
    for viewController in viewControllers {
      if let welcomeVC = viewController as? WelcomeViewController {
        welcomeVC.welcomeValue = loginTextField.text ?? ""
      } else if let aboutVC = viewController as? AboutMeViewController {
        
        aboutVC.user = user
        
      } else if let mainInfo = viewController as? MainInformationsViewController {
  
        mainInfo.user = user
        
      }
    }
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    view.endEditing(true)
  }
  
  @IBAction func logInButtonPressed() {
    
    guard loginTextField.text == user.login && passwordTextField.text == user.password else {
      
      passwordTextField.text = ""
      
      showAlert(alertText: "Someting is wrong", alertMessage: "Login or password is not correct")
      return
    }
    
    performSegue(withIdentifier: "openWelcomeVC", sender: nil)
  }
  
  @IBAction func unwind(segue: UIStoryboardSegue) {
    loginTextField.text = ""
    passwordTextField.text = ""
  }
  
  @IBAction func forgotUserNameButtonPressed() {
    showAlert(alertText: "Ah you forgot login?", alertMessage: "Login is \(user.login)")
  }
  
  @IBAction func forgotPasswordButtonPressed() {
    showAlert(alertText: "You forgot password?", alertMessage: "Password is \(user.password)")
  }
  
}


extension UIViewController {
  // Show a basic alert
  func showAlert(alertText: String, alertMessage: String) {
    let alert = UIAlertController(title: alertText,
                                  message: alertMessage,
                                  preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Got it", style: UIAlertAction.Style.default))
    present(alert, animated: true)
  }
}

