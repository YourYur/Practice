//
//  FriendListViewController.swift
//  RocketMan
//
//  Created by 허유라 on 26/07/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit
import SnapKit

class FriendListViewController: UIViewController {
    var friendLabel: UILabel = UILabel()
    var mailButton: UIButton = UIButton()
    var tableView: UITableView = UITableView()
    var testData: [UserInfo] = UserInfo.friendInfo
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        tableView.dataSource = self
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        view.addSubview(friendLabel)
        friendLabel.text = "친구"
        friendLabel.font = UIFont.titleBold
        friendLabel.textColor = .black
        friendLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(10)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(20)
        }
        
        view.addSubview(mailButton)
        mailButton.backgroundColor = .white
        mailButton.setImage(UIImage(named: "newMailIcon"), for: .normal)
        //mailButton.setBackgroundImage(UIImage(named: "mailIcon"), for: .normal)
        //mailButton.imageView?.contentMode = .scaleAspectFit
        mailButton.layer.masksToBounds = true
        mailButton.snp.makeConstraints { make in
            make.size.equalTo(30)
            make.trailing.equalToSuperview().inset(10)
            make.centerY.equalTo(friendLabel)
        }
        mailButton.addTarget(self, action: #selector(didTap), for: .touchUpInside)
        
        view.addSubview(tableView) // 내 화면은 전체적으로 테이블뷰 하나가 들어간다.
        tableView.register(FriendProfileTableViewCell.self, forCellReuseIdentifier: "FriendProfileTableViewCell") // 얜 뭐지?
        tableView.snp.makeConstraints { make in
            make.top.equalTo(friendLabel.snp.bottom).offset(10)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    @objc func didTap() {
        let vc = MailListViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

extension FriendListViewController: UITableViewDataSource, UITableViewDelegate { // 프로토콜 따로 뺀 거였나??
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //얜 뭐하는 친구야??
        testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //뭐하는 친구야??
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendProfileTableViewCell") as! FriendProfileTableViewCell
        cell.configure(userInfo: testData[indexPath.row])
        
        return cell
    }
}

