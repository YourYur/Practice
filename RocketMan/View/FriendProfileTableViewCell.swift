//
//  FriendProfileViewController.swift
//  RocketMan
//
//  Created by 허유라 on 26/07/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit

class FriendProfileTableViewCell: UITableViewCell { //TableViewCell class 상속받아서 내가 customize 함. 그 안에 들어 갈 요소들 변수로 선언해주고, 각 요소 세팅 해주고, 데이터 받아서 각 셀에 넣어주는 함수 구현
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
    
    func setUp() { // cell 의 각 요소 css 상세 세팅해줌. 내용은 다른 func configure 에서 해줄거임.
        //  cell에다가 UI컴포넌트 추가(addsubview)할때는 cell의 contentView에 추가해야한다. cf. viewcontroller의 경우 view 였음.
        
        contentView.addSubview(profileImageButton) // 요소 세팅해줄 때, 가독성 위해 일정 방향으로 쓴다. 여기선 왼쪽에서 오른쪽으로 가면서 생기는 요소 순서대로 써줘서 이미징 가능하게!
        profileImageButton.snp.makeConstraints {make in
            make.size.equalTo(40)
            make.leading.top.bottom.equalToSuperview().inset(10)
        }
        
        contentView.addSubview(userNameLabel)
        userNameLabel.font = UIFont.systemFont(ofSize: 14)
        userNameLabel.textColor = .black
        
        contentView.addSubview(statusMessageLabel)
        statusMessageLabel.font = UIFont.systemFont(ofSize: 12)
        statusMessageLabel.textColor = UIColor.black.withAlphaComponent(0.5)
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        contentView.addSubview(stackView)
        let maxLength = (UIScreen.main.bounds.width / 2) - 40 // 다른 방법은 뭐가 있지? 다른 분들은 어떻게 썼지? 각 방법 비교 해보기
        stackView.snp.makeConstraints {make in
            make.leading.equalTo(profileImageButton.snp.trailing).offset(10)
            make.centerY.equalToSuperview() //?? 누구의 centerY 지? superview가 뭐지? 전체? 아님 스택뷰? 전체라면, 왜 전체 centerY 맞춘거지? 아! 전체 스택뷰의 y를 superview(여기선 cell내부크기)의 가운데에 맞춤.
            //make.width.equalTo(160)
            make.width.equalTo(maxLength)
        }
        stackView.addArrangedSubview(userNameLabel)
        stackView.addArrangedSubview(statusMessageLabel) //stackview를 먼저해주고, 그 안에 들어가는 요소 정해주게 쓰면 가독성이 오히려 떨어지나? 가능은 한가?? 해보기
        
        
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
        

    
    
    func configure(userInfo: UserInfo) { //cell 내용 구현 함수.
        profileImageButton.setBackgroundImage(userInfo.profileImage, for: .normal)
        userNameLabel.text = userInfo.userName
        statusMessageLabel.text = userInfo.StatusMessage
        
        //조심. 테이블뷰 재사용 때매 일케 해줘야함. 안 그러면 스크롤 왔다갔다 시 지워져있음
        if let music = userInfo.profileMusic { //존재 시
            musicButton.setTitle(userInfo.profileMusic, for: .normal)
            musicButton.isHidden = false
        } else {
            musicButton.isHidden = true
        }
        musicButton.setContentHuggingPriority(.defaultHigh, for: .horizontal) // 뭐임?

    }
}

