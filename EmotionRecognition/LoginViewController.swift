//
//  LoginViewController.swift
//  EmotionRecognition
//
//  Created by David Xue on 8/4/17.
//
//

import UIKit

class LoginViewController: UIViewController {
  
  // MARK: IB Outlets
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  @IBOutlet weak var manualLoginButton: UIButton!
  @IBOutlet weak var googleLoginButton: SocialButton!
  @IBOutlet weak var facebookLoginButton: SocialButton!
  @IBOutlet weak var twitterLoginButton: SocialButton!
  
  // MARK: IB Actions
  @IBAction func loginAction(_ sender: UIButton) {
    let cameraVC = CameraViewController()
    navigationController?.pushViewController(cameraVC, animated: true)
  }
  
  // MARK: View Setup
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController?.setNavigationBarHidden(true, animated: true)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension LoginViewController: UITextFieldDelegate{
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
}

