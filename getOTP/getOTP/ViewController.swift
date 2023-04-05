//
//  ViewController.swift
//  getOTP
//
//  Created by Mac on 06/04/23.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        text1.backgroundColor = UIColor.clear
        text2.backgroundColor = UIColor.clear
        text3.backgroundColor = UIColor.clear
        text4.backgroundColor = UIColor.clear
        
        
        
        text1.delegate = self
        text2.delegate = self
        text3.delegate = self
        text4.delegate = self
        
        border(textFiled: text1)
        border(textFiled: text2)
        border(textFiled: text3)
        border(textFiled: text4)
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        
        if ((textField.text?.count)! < 1 ) && (string.count > 0) {
            
            if textField == text1 {
                text2.becomeFirstResponder()
            }
            if textField == text2 {
                text3.becomeFirstResponder()
            }
            if textField == text3 {
                text4.becomeFirstResponder()
            }
            if textField == text4 {
                text4.becomeFirstResponder()
            }
            textField.text = string
            return false
        }
        else if ((textField.text?.count)! >= 1) && (string.count ==  0){
            
            if textField == text2 {
                text1.becomeFirstResponder()
            }
            if textField == text3 {
                text2.becomeFirstResponder()
            }
            if textField == text4 {
                text3.becomeFirstResponder()
            }
            if textField == text1 {
                text1.becomeFirstResponder()
            }
            textField.text = ""
            return false
        }
        else if (textField.text?.count)! >= 1 {
            textField.text = string
            return false
        }
        return true
    }
    func border(textFiled: UITextField){
        let layer = CALayer()
        layer.frame = CGRect(x: 0.0, y: textFiled.frame.size.height - 2.0, width: textFiled.frame.size.width, height: 2.0)
        layer.backgroundColor = UIColor.gray.cgColor
        
        textFiled.layer.addSublayer(layer)
    }
}

