//
//  ForgetPwdViewController.swift
//  nav
//
//  Created by Баэль Рыспеков on 11/3/23.
//

import UIKit

class ForgetPwdViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    //    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var forgetPwdView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        forgetPwdView.clipsToBounds = true
        forgetPwdView.layer.cornerRadius = 30
        forgetPwdView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.black.cgColor
        
        //        myButton.layer.borderWidth = 1
        //        myButton.layer.borderColor = UIColor.black.cgColor
        //        myButton.layer.cornerRadius = 10
        
    }
    
    
  
    @IBAction func newPwdAction(_ sender: Any) {
//        let vc: NewPwdViewController = storyboard?.instantiateViewController(withIdentifier: "NewPwdViewController") as! NewPwdViewController
//        self.navigationController?.pushViewController(vc, animated: true)
        if idTextField.text?.isEmpty ?? true {
                idTextField.layer.borderWidth = 1
                idTextField.layer.borderColor = UIColor.red.cgColor
                idTextField.placeholder = "заполните поле"
        }else{
            let vc: NewPwdViewController = storyboard?.instantiateViewController(withIdentifier: "NewPwdViewController") as! NewPwdViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }

    }
    
    
}







