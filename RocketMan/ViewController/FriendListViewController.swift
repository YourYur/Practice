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
    var tableView: UITableView = UITableView()
    
    
    var testData: [UserInfo] = UserInfo.friendInfo
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUp()
        tableView.dataSource = self
        
    }
    
    private func setUp() {
        
        view.addSubview(tableView)
        tableView.register(FriendProfileTableViewCell.self, forCellReuseIdentifier: "FriendProfileTableViewCell")
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension FriendListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendProfileTableViewCell") as! FriendProfileTableViewCell
        cell.configure(userInfo: testData[indexPath.row])
        return cell
    }
    
    
}
