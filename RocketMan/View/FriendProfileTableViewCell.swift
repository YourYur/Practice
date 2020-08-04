//
//  FriendProfileViewController.swift
//  RocketMan
//
//  Created by 허유라 on 26/07/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit

class FriendProfileTableViewCell: UITableViewCell {
    var profileImageButton: UIButton = UIButton()
    var userNameLabel: UILabel = UILabel()
    var statusMessageLabel: UILabel = UILabel()
    var musicButton: UIButton = UIButton()
    //관습
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUp()
    }
    //관습
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        //  cell에다가 UI컴포넌트 추가(addsubview)할때는 cell의 contentView에 추가해야한다.
        
        contentView.addSubview(profileImageButton)
        profileImageButton.snp.makeConstraints {make in
            make.leading.top.bottom.equalToSuperview().inset(10)
            make.size.equalTo(40)
        }
        
        contentView.addSubview(userNameLabel)
        userNameLabel.font = UIFont.systemFont(ofSize: 14)
        userNameLabel.textColor = .black
        
        contentView.addSubview(statusMessageLabel)
        statusMessageLabel.font = UIFont.systemFont(ofSize: 12)
        statusMessageLabel.textColor = UIColor.black.withAlphaComponent(0.5)
        
        let leadingMaxLength = (UIScreen.main.bounds.width / 2) - 40
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints {make in
            make.leading.equalTo(profileImageButton.snp.trailing).offset(10)
            make.centerY.equalToSuperview()
            //make.width.equalTo(160)
            make.width.equalTo(leadingMaxLength)
            
        }
        stackView.addArrangedSubview(userNameLabel)
        stackView.addArrangedSubview(statusMessageLabel)
        
        
        contentView.addSubview(musicButton)
        musicButton.setTitleColor(UIColor.black.withAlphaComponent(0.5), for: .normal)
        musicButton.titleLabel?.font = UIFont.defaultFont
        musicButton.snp.makeConstraints {make in
            make.trailing.equalToSuperview().inset(10)
            make.centerY.equalToSuperview()
            make.width.lessThanOrEqualTo(stackView.snp.width)
            //make.width.lessThanOrEqualTo(UIScreen.main.bounds.width - leadingMaxLength)
            //make.leading.equalTo(stackView.snp.trailing).offset(10)
        }
        musicButton.layer.borderWidth = 1
        musicButton.layer.borderColor = UIColor.green.cgColor
        musicButton.layer.cornerRadius = 10
        musicButton.layer.masksToBounds = true
        musicButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        }
        

    
    
    func configure(userInfo: UserInfo) {
        profileImageButton.setBackgroundImage(userInfo.profileImage, for: .normal)
        userNameLabel.text = userInfo.userName
        statusMessageLabel.text = userInfo.StatusMessage
        
        //조심. 테이블뷰 재사용 때매 일케 해줘야함. 안 그러면 
        if let music = userInfo.profileMusic {
            musicButton.setTitle(userInfo.profileMusic, for: .normal)
            musicButton.isHidden = false
        } else {
            musicButton.isHidden = true
        }
        musicButton.setContentHuggingPriority(.defaultHigh, for: .horizontal)

    }
}

