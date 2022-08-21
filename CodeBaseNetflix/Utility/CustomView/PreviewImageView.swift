//
//  PreviewImageView.swift
//  CodeBaseNetflix
//
//  Created by yongseok lee on 2022/08/21.
//

import UIKit

class PreviewImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        layer.cornerRadius = frame.width / 2
        clipsToBounds = true
        layer.borderWidth = 2
        layer.borderColor = UIColor.gray.cgColor
    }
    
    
}
