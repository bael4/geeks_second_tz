//
//  NewPwdViewController.swift
//  nav
//
//  Created by Баэль Рыспеков on 11/3/23.
//

import UIKit

class NewPwdViewController: UIViewController {

  
    @IBOutlet weak var confirmNewPaswordTextField: PasswordTextField!
    @IBOutlet weak var newPasswordTextField: PasswordTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


    @IBAction func newPwdAction(_ sender: Any) {
        
        
        
        if  confirmNewPaswordTextField.text?.isEmpty ?? true || newPasswordTextField.text?.isEmpty ?? true {

            confirmNewPaswordTextField.layer.borderWidth = 1
            confirmNewPaswordTextField.layer.borderColor = UIColor.red.cgColor
            confirmNewPaswordTextField.placeholder = "заполните поле"
            newPasswordTextField.layer.borderWidth = 1
            newPasswordTextField.layer.borderColor = UIColor.red.cgColor
            newPasswordTextField.placeholder = "заполните поле"


        }else{

        let vc: SuccesViewController = storyboard?.instantiateViewController(withIdentifier: "SuccesViewController") as! SuccesViewController
        self.navigationController?.pushViewController(vc, animated: true)
        }
       
    }
}
