//
//  UIFontClassExtension.swift
//  RocketMan
//
//  Created by 허유라 on 26/07/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit

extension UIFont {

    static var defaultFont: UIFont {
           return UIFont.systemFont(ofSize: 12) // 왜 변수인데 return?이 오는거징?
       }
       static var defaultBold: UIFont {
           return UIFont.systemFont(ofSize: 12, weight: .bold)
       }
       static var defaultLargeFont: UIFont {
           return UIFont.systemFont(ofSize: 14)
       }
       static var defaultLargeBold: UIFont {
           return UIFont.systemFont(ofSize: 14, weight: .bold)
       }
    static var titleBold: UIFont {
        return UIFont.systemFont(ofSize: 28, weight: .bold)
    }
}
