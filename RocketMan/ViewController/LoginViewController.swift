//
//  LoginViewController.swift
//  RocketMan
//
//  Created by 허유라 on 21/07/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    let loginLabel = UILabel()
    let idTextField = UITextField()
    let pwTextField = UITextField()
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idTextField.delegate = self
        pwTextField.delegate = self
        setUp()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        
    }
    
    func setUp() {
        
        view.backgroundColor = .white
        
        
        view.addSubview(loginLabel)
        loginLabel.text = "로그인"
        loginLabel.font = UIFont (name: "AppleSDGothicNeo-Bold", size: 36)
        loginLabel.textColor = UIColor (displayP3Red: 224/256, green: 32/256, blue: 32/256, alpha: 1)
        loginLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(34)
        }
        
        view.addSubview(idTextField)
        idTextField.textColor = UIColor (displayP3Red: 0, green: 0, blue: 0, alpha: 0.37)
        idTextField.font = UIFont (name: "AppleSDGothicNeo-Bold", size: 18)
        idTextField.placeholder = "아이디"
        idTextField.tintColor = UIColor (displayP3Red: 0, green: 0, blue: 0, alpha: 0.37)
        idTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().offset(20)
            make.top.equalTo(loginLabel).offset(74)
        }
        
        view.addSubview(pwTextField)
        pwTextField.textColor = UIColor (displayP3Red: 0, green: 0, blue: 0, alpha: 0.37)
        pwTextField.font = UIFont (name: "AppleSDGothicNeo-Bold", size: 18)
        pwTextField.placeholder = "비밀번호"
        pwTextField.tintColor = UIColor (displayP3Red: 0, green: 0, blue: 0, alpha: 0.37)
        pwTextField.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().offset(20)
            make.top.equalTo(idTextField.snp.bottom).offset(17)
        }
        
        view.addSubview(loginButton)
        loginButton.setTitle("로그인", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = UIColor (displayP3Red: 204/256, green: 36/256, blue: 36/256, alpha: 1)
        loginButton.layer.cornerRadius = 25
        loginButton.layer.masksToBounds = true
        loginButton.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(187)
        }
        loginButton.addTarget(self, action: #selector(didTap), for: .touchUpInside)
    }
    
    @objc func didTap() {
        dismiss(animated: true)
        print(idTextField.text)
        print(pwTextField.text)
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

}

