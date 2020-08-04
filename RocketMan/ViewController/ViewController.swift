//
//  ViewController.swift
//  RocketMan
//
//  Created by 허유라 on 21/07/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    let rocketLabel = UILabel()
    let welcomeLabel = UILabel()
    let helpLabel = UILabel()
    let loginButton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
        // Do any additional setup after loading the view.
    }
    
    func setUp() {
        
        view.backgroundColor = .white
        
        view.addSubview(rocketLabel)
        rocketLabel.text = "🚀"
        rocketLabel.font = UIFont.systemFont(ofSize: 72)
        rocketLabel.textAlignment = .center
        rocketLabel.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(153)
        }
        
        view.addSubview(welcomeLabel)
        welcomeLabel.text = "Welcome To Rocket"
        welcomeLabel.font = UIFont (name: "AppleSDGothicNeo-Bold", size: 30)
        welcomeLabel.textColor = .init(red: 217/256, green: 68/256, blue: 68/256, alpha: 1)
        welcomeLabel.textAlignment = .center
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(rocketLabel.snp.bottom).offset(37)
        }
        
        view.addSubview(helpLabel)
        helpLabel.numberOfLines = 0
        helpLabel.text = "반가워요\n어려웠던 iOS 쉽게 도와드릴게요"
        helpLabel.font = UIFont (name: "AppleSDGothicNeo-Bold", size: 18)
        helpLabel.textColor = .black
        helpLabel.textAlignment = .center
        helpLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(welcomeLabel.snp.bottom).offset(25)
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
            make.top.equalTo(helpLabel.snp.bottom).offset(57)
        }
        loginButton.addTarget(self, action: #selector(didTap), for: .touchUpInside)
    }

    @objc func didTap() {
        let vc = LoginViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

