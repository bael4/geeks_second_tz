//
//  ViewController.swift
//  nav
//
//  Created by Баэль Рыспеков on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: PasswordTextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInView: UIView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        signInView.clipsToBounds = true
        signInView.layer.cornerRadius = 30
        signInView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        
        signInButton.layer.cornerRadius = 20
    }
    
    
    @IBAction func signInAction(_ sender: Any) {
        
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderWidth = 1
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.placeholder = "заполните поле"
            passwordTextField.layer.borderWidth = 1
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.placeholder = "заполните поле"
        }
        else{
            let vc: SuccesViewController = storyboard?.instantiateViewController(withIdentifier: "SuccesViewController") as! SuccesViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
       
    }
    @IBAction func signUpAction(_ sender: Any) {
        let vc: SignUpViewController = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as!  SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   
    
   
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        let vc: ForgetPwdViewController = storyboard?.instantiateViewController(withIdentifier: "ForgetPwdViewController") as! ForgetPwdViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func checkBoxButton(_ sender: Any) {
       
    }
}





//
//
//
//
//class PasswordTextField: UITextField {
//
//    private let showPasswordButton = UIButton(type: .custom)
//    private var isPasswordHidden = true
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupView()
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        setupView()
//    }
//
//    private func setupView() {
//        // настройка кнопки для отображения и скрытия пароля
//        showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
//        showPasswordButton.addTarget(self, action: #selector(showPasswordButtonTapped), for: .touchUpInside)
//        rightView = showPasswordButton
//        rightViewMode = .always
//        isSecureTextEntry = true
//        showPasswordButton.tintColor = .darkGray
//
//
//
//    }
//
//    @objc private func showPasswordButtonTapped() {
//        // изменение значения isSecureTextEntry
//        isSecureTextEntry.toggle()
//
//        // изменение изображения кнопки в зависимости от значения isSecureTextEntry
//        let imageName = isSecureTextEntry ? "eye.slash" : "eye"
//        showPasswordButton.setImage(UIImage(systemName: imageName), for: .normal)
//    }

//}
//class PasswordTextField: UITextField {
//
//    private let showPasswordButton = UIButton(type: .custom)
//    private var isPasswordHidden = true
//
//    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
//        var rightViewRect = super.rightViewRect(forBounds: bounds)
//        rightViewRect.origin.x -= -230 // сдвигаем кнопку "глаз" вправо на 10 единиц
//        return rightViewRect
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupView()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        setupView()
//    }
//
//    private func setupView() {
//        // настройка кнопки для отображения и скрытия пароля
//        showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
//        showPasswordButton.addTarget(self, action: #selector(showPasswordButtonTapped), for: .touchUpInside)
//        rightView = showPasswordButton
//        rightViewMode = .always
//        isSecureTextEntry = true
//        showPasswordButton.tintColor = .darkGray
//    }
//
//    @objc private func showPasswordButtonTapped() {
//        // изменение значения isSecureTextEntry
//        isSecureTextEntry.toggle()
//
//        // изменение изображения кнопки в зависимости от значения isSecureTextEntry
//        let imageName = isSecureTextEntry ? "eye.slash" : "eye"
//        showPasswordButton.setImage(UIImage(systemName: imageName), for: .normal)
//    }
//}



//class PasswordTextField: UITextField {
//
//    private let showPasswordButton = UIButton(type: .custom)
//    private var isPasswordHidden = true
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        // Устанавливаем размер кнопки в соответствии с размером правого представления
//        showPasswordButton.frame = rightViewRect(forBounds: bounds)
//    }
//
//    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
//        var rightViewRect = super.rightViewRect(forBounds: bounds)
//        rightViewRect.origin.x = 300 // сдвигаем кнопку "глаз" вправо на 10 единиц
//        return rightViewRect
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupView()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        setupView()
//    }
//
//    private func setupView() {
//        // настройка кнопки для отображения и скрытия пароля
//        showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
//        showPasswordButton.addTarget(self, action: #selector(showPasswordButtonTapped), for: .touchUpInside)
//        rightView = showPasswordButton
//        rightViewMode = .always
//        isSecureTextEntry = true
//        showPasswordButton.tintColor = .darkGray
//    }
//
//    @objc private func showPasswordButtonTapped() {
//        // изменение значения isSecureTextEntry
//        isSecureTextEntry.toggle()
//
//        // изменение изображения кнопки в зависимости от значения isSecureTextEntry
//        let imageName = isSecureTextEntry ? "eye.slash" : "eye"
//        showPasswordButton.setImage(UIImage(systemName: imageName), for: .normal)
//    }
//}


class Checkbox: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    // Метод для установки изображений для разных состояний кнопки
    private func setupButton() {
        setImage(UIImage(systemName: "square"), for: .normal)
        setImage(UIImage(systemName: "checkmark.square"), for: .selected)
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    // Метод для переключения состояния кнопки при нажатии на нее
    @objc func buttonTapped() {
        isSelected.toggle()
    }
    
}



