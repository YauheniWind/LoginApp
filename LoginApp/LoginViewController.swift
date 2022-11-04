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
  
  let userLogin = "User"
  let userPassword = "1234"

  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
    
    if loginTextField.text == userLogin && passwordTextField.text == userPassword {
      
      welcomeVC.welcomeValue = loginTextField.text
      
    } else {
      
      showAlert(alertText: "Someting is wrong", alertMessage: "Login or password is not correct")
      
    }
  }
  
  @IBAction func unwind(segue: UIStoryboardSegue) {
    loginTextField.text = ""
    passwordTextField.text = ""
  }

  @IBAction func forgotUserNameButtonPressed() {
    showAlert(alertText: "Ah you forgot login?", alertMessage: "Login is User")
  }
  
  @IBAction func forgotPasswordButtonPressed() {
    showAlert(alertText: "You forgot password?", alertMessage: "Password is 1234")
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    self.view.endEditing(true)
  }
  
}


extension UIViewController {
// Show a basic alert
    func showAlert(alertText: String, alertMessage: String) {
        let alert = UIAlertController(title: alertText,
                                      message: alertMessage,
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Got it", style: UIAlertAction.Style.default, handler: nil))
    self.present(alert, animated: true, completion: nil)
    }
}

