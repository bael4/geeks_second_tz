//
//  myButton.swift
//  nav
//
//  Created by Баэль Рыспеков on 11/3/23.
//



/// ошибка
///
import UIKit

class myButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Установите параметры кнопки
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
//        self.setTitleColor(UIColor.blue, for: .normal)
        self.layer.cornerRadius = 10
    }

}
