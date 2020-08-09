//
//  MailTableViewCell.swift
//  RocketMan
//
//  Created by 허유라 on 07/08/2020.
//  Copyright © 2020 Yura. All rights reserved.
//
import UIKit

class MailTableViewCell: UITableViewCell {
    var profileImageButton: UIButton = UIButton()
    var titleLabel: UILabel = UILabel()
    var contentLabel: UILabel = UILabel()
    var documentButton: UIButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        contentView.addSubview(profileImageButton)
        let stackView = UIStackView()
        contentView.addSubview(stackView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(contentLabel)
        let containerView = UIView()
        contentView.addSubview(containerView)
        contentView.addSubview(documentButton)
        let starButton = UIButton()
        contentView.addSubview(starButton)
        
        profileImageButton.layer.cornerRadius = 20
        profileImageButton.layer.masksToBounds = true
        profileImageButton.snp.makeConstraints {make in
            make.size.equalTo(40)
            make.leading.top.bottom.equalToSuperview().inset(10)
        }
        
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(contentLabel)
        stackView.addArrangedSubview(containerView)
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.snp.makeConstraints {make in
            make.leading.equalTo(profileImageButton.snp.trailing).offset(10)
            make.centerY.equalToSuperview()
            make.trailing.equalTo(starButton.snp.leading).offset(10)
        }
        
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        titleLabel.textColor = .black
        titleLabel.layer.masksToBounds = true
        
        contentLabel.font = UIFont.systemFont(ofSize: 12)
        contentLabel.textColor = UIColor.black.withAlphaComponent(0.5)
        
        containerView.addSubview(documentButton)
        
        documentButton.setTitleColor(UIColor.black.withAlphaComponent(0.5), for: .normal)
        documentButton.titleLabel?.font = UIFont.defaultFont
        documentButton.snp.makeConstraints {make in
            //make.trailing.equalToSuperview().inset(10)
            make.width.lessThanOrEqualTo(stackView.snp.width)
        }
        documentButton.layer.borderWidth = 1
        documentButton.layer.borderColor = UIColor.gray.cgColor
        documentButton.layer.cornerRadius = 10
        documentButton.layer.masksToBounds = true
        documentButton.contentEdgeInsets = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        
        starButton.setTitle("☆", for: .normal)
        starButton.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        starButton.setTitleColor(.black, for: .normal)
        starButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(10)
            make.centerY.equalToSuperview()
        }
        }
    
    func configure(mailInfo: MailInfo) {
        profileImageButton.setTitle(mailInfo.user, for: .normal)
        profileImageButton.backgroundColor = .black
        titleLabel.text = mailInfo.title
        contentLabel.text = mailInfo.content
        documentButton.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        if let music = mailInfo.documents {
            documentButton.setTitle(mailInfo.documents, for: .normal)
            documentButton.isHidden = false
        } else {
            documentButton.isHidden = true
        }
    }
}

