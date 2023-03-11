//
//  SignUpViewController.swift
//  nav
//
//  Created by Баэль Рыспеков on 11/3/23.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var fullNameTextField: UITextField!
    
    
    @IBOutlet weak var mobileNumberTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: PasswordTextField!
    @IBOutlet weak var confirmPasswordTextField: PasswordTextField!
    

    @IBOutlet weak var signUpView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpView.clipsToBounds = true
        signUpView.layer.cornerRadius = 30
        signUpView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    

   
    @IBAction func signUpAction(_ sender: Any) {
        
        if emailTextField.text?.isEmpty ?? true && passwordTextField.text?.isEmpty ?? true{
            
            emailTextField.layer.borderWidth = 1
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.placeholder = "заполните поле"
            
            passwordTextField.layer.borderWidth = 1
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.placeholder = "заполните поле"
            
            confirmPasswordTextField.layer.borderWidth = 1
            confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
            confirmPasswordTextField.placeholder = "заполните поле"
            
            fullNameTextField.layer.borderWidth = 1
            fullNameTextField.layer.borderColor = UIColor.red.cgColor
            fullNameTextField.placeholder = "заполните поле"
            
           mobileNumberTextField.layer.borderWidth = 1
            mobileNumberTextField.layer.borderColor = UIColor.red.cgColor
            mobileNumberTextField.placeholder = "заполните поле"
            
            userNameTextField.layer.borderWidth = 1
            userNameTextField.layer.borderColor = UIColor.red.cgColor
            userNameTextField.placeholder = "заполните поле"
        }else{
            let vc: SuccesViewController = storyboard?.instantiateViewController(withIdentifier: "SuccesViewController") as! SuccesViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }
            
     
    }
    
    @IBAction func signInAction(_ sender: Any) {
        let vc: ViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
