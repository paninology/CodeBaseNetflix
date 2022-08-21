//
//  WhiteTextLabel.swift
//  CodeBaseNetflix
//
//  Created by yongseok lee on 2022/08/19.
//

import UIKit

class WhiteTextLabel : UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = .clear
        textColor = .white
        font = .boldSystemFont(ofSize: 14)
    }
    
}
