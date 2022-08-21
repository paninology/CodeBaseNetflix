//
//  MainViewButton.swift
//  CodeBaseNetflix
//
//  Created by yongseok lee on 2022/08/19.
//

import UIKit

class MainViewButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = .clear
        tintColor = .white
//        font = .boldSystemFont(ofSize: 14)
        layer.borderWidth = 0
//        setTitleColor(.w, for: )
        titleLabel?.font = .boldSystemFont(ofSize: 14)
    }
    
}
