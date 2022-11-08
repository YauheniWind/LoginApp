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
  
  private let userLogin = "User"
  private let userPassword = "1234"

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
    welcomeVC.welcomeValue = userLogin
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    view.endEditing(true)
  }
  
  @IBAction func logInButtonPressed() {
    
    guard loginTextField.text == userLogin && passwordTextField.text == userPassword else {
      
      loginTextField.text = ""
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
    showAlert(alertText: "Ah you forgot login?", alertMessage: "Login is \(userLogin)")
  }
  
  @IBAction func forgotPasswordButtonPressed() {
    showAlert(alertText: "You forgot password?", alertMessage: "Password is \(userPassword)")
  }
    
}


extension UIViewController {
// Show a basic alert
    func showAlert(alertText: String, alertMessage: String) {
        let alert = UIAlertController(title: alertText,
                                      message: alertMessage,
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Got it", style: UIAlertAction.Style.default))
    self.present(alert, animated: true)
    }
}

