//
//  MailListViewController.swift
//  RocketMan
//
//  Created by 허유라 on 07/08/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit

class MailListViewController: UIViewController {
    var mailLabel: UILabel = UILabel()
    var tableView: UITableView = UITableView()
    var testData: [MailInfo] = MailInfo.receivedMailInfo
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        
        tableView.dataSource = self
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        view.addSubview(mailLabel)
        mailLabel.text = "메일함"
        mailLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(10)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(20)
        }
        
        view.addSubview(tableView)
        tableView.register(MailTableViewCell.self, forCellReuseIdentifier: "MailTableViewCell")
        tableView.snp.makeConstraints { make in
            make.top.equalTo(mailLabel.snp.bottom).offset(10)
            make.bottom.leading.trailing.equalToSuperview()
        }
    }
}

extension MailListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MailTableViewCell") as!
        MailTableViewCell //내 테이블뷰의 셀을 내가 만든 이 셀로 한다?? 근데 왜 이름이 두 번 들어가지? downcast관련 코드
        cell.configure(mailInfo: testData[indexPath.row])
        return cell
    }
}
