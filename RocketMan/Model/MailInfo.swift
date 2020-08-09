//
//  MailInfo.swift
//  RocketMan
//
//  Created by 허유라 on 07/08/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit

struct MailInfo {
    var user: String?
    var color: String? = ".blue"
    var title: String
    var content: String
    var documents: String?
    var isRead: Bool = false
}

extension MailInfo {
    static var receivedMailInfo : [MailInfo] = [
        MailInfo(user: "U", title: "Uber", content: "Yura님, 지금 같은 시기에는 잠깐 볼일을 보러 나가는 것도 만만치 않게 느껴지곤 합니다. 볼일을 처리하기 위해 가야 할 곳이 얼마나 많은지와 관계없이 가야 할 곳으로 곧장 이동하는 차량 서비스를 통해 볼일을 빠르게 처리하실 수 있습니다." ),
        MailInfo(user: "A", title: "Agoda Customer Service", content: "고객님의 예약이 확정되고 완료되었습니다!", documents: "[아고다]_예약_확정_(예약번호:12341234)"),
        ]
}
