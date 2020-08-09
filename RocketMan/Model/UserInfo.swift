//
//  UserInfo.swift
//  RocketMan
//
//  Created by 허유라 on 26/07/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit

struct UserInfo {
    var profileImage: UIImage? = UIImage(named: "bluePerson")
    var userName: String
    var StatusMessage: String?
    var profileMusic: String?
}


extension UserInfo {
    static var myInfo: UserInfo = UserInfo (profileImage: UIImage(named: "person1"), userName: "허유라", StatusMessage: "안녕", profileMusic: "봄날")
    static var friendInfo: [UserInfo] = [
        UserInfo(userName: "얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라리얄라얄랴얄랴얄랴셩리얄라얄랴얄랴얄랴셩리얄라얄랴얄랴얄랴셩", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "한나연", StatusMessage: "언제 만나냐 한나연얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라", profileMusic: "잔나비 노래 아무거나 틀면 돼얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라"),
        UserInfo(profileImage: UIImage(named: "person3"), userName: "강소연", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person4"), userName: "김동욱", StatusMessage: "가평 빠지 신난다", profileMusic:"Cake By The Ocean"),
        UserInfo(userName: "얄랴얄랴얄랴셩얄라리얄라", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "한나연", StatusMessage: "언제 만나냐 한나연", profileMusic: "잔나비 노래 아무거나 틀면 돼리얄라얄랴얄랴얄랴셩리얄라얄랴얄랴얄랴셩리얄라얄랴얄랴얄랴셩리얄라얄랴얄랴얄랴셩"),
        UserInfo(profileImage: UIImage(named: "person3"), userName: "강소연", StatusMessage: nil, profileMusic: nil),
        UserInfo(userName: "얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "한나연", StatusMessage: "언제 만나냐 한나연얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라", profileMusic: "잔나비 노래 아무거나 틀면 돼"),
        UserInfo(profileImage: UIImage(named: "person3"), userName: "강소연", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person4"), userName: "김동욱", StatusMessage: "가평 빠지 신난다", profileMusic:"Cake By The Ocean"),
        UserInfo(userName: "얄랴얄랴얄랴셩얄라리얄라", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "한나연", StatusMessage: "언제 만나냐 한나연", profileMusic: "잔나비 노래 아무거나 틀면 돼"),
        UserInfo(profileImage: UIImage(named: "person3"), userName: "강소연", StatusMessage: nil, profileMusic: nil),
        UserInfo(userName: "얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "한나연", StatusMessage: "언제 만나냐 한나연얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라", profileMusic: "잔나비 노래 아무거나 틀면 돼"),
        UserInfo(profileImage: UIImage(named: "person3"), userName: "강소연", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person4"), userName: "김동욱", StatusMessage: "가평 빠지 신난다", profileMusic:"Cake By The Ocean"),
        UserInfo(userName: "얄랴얄랴얄랴셩얄라리얄라", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "한나연", StatusMessage: "언제 만나냐 한나연", profileMusic: "잔나비 노래 아무거나 틀면 돼"),
        UserInfo(profileImage: UIImage(named: "person3"), userName: "강소연", StatusMessage: nil, profileMusic: nil),
        UserInfo(userName: "얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "한나연", StatusMessage: "언제 만나냐 한나연얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라얄랴얄랴얄랴셩얄라리얄라", profileMusic: "잔나비 노래 아무거나 틀면 돼"),
        UserInfo(profileImage: UIImage(named: "person3"), userName: "강소연", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person4"), userName: "김동욱", StatusMessage: "가평 빠지 신난다", profileMusic:"Cake By The Ocean"),
        UserInfo(userName: "얄랴얄랴얄랴셩얄라리얄라", StatusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "한나연", StatusMessage: "언제 만나냐 한나연", profileMusic: "잔나비 노래 아무거나 틀면 돼"),
        UserInfo(profileImage: UIImage(named: "person3"), userName: "강소연", StatusMessage: nil, profileMusic: nil),
        ]
}

