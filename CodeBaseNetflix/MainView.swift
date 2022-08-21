//
//  MainView.swift
//  CodeBaseNetflix
//
//  Created by yongseok lee on 2022/08/19.
//

import UIKit

import SnapKit

class MainView: BaseView {
    
    
    let movieImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "괴물")
        return view
    }()
    
    let backgroundImageView: UIImageView = {
        let view = UIImageView()
//        view.layer.opacity = 0.5
        view.image = UIImage(named: "background")
        return view
    }()
    
    let CILabel: WhiteTextLabel = {
        let view = WhiteTextLabel()
        view.font = .boldSystemFont(ofSize: 44)
//        view.font = .fontNames(forFamilyName: )

        view.text = "N"
        return view
    }()
    
    let TVButton: MainViewButton = {
        let view = MainViewButton()
        view.setTitle("TV 프로그램 ", for: .normal)
        return view
    }()
    
    let movieButton: MainViewButton = {
        let view = MainViewButton()
        view.setTitle("영화", for: .normal)

        return view
    }()
    
    let showLikeContentsButton: MainViewButton = {
        let view = MainViewButton()
        view.setTitle("내가 찜한 콘텐츠", for: .normal)
        return view
    }()
    
    let likeContenstButton: MainViewButton = {
        let view = MainViewButton(configuration: UIButton.Configuration.plain())
        view.setTitle("내가 찜한 콘텐츠", for: .normal)
        view.setImage(UIImage(named: "check"), for: .normal)
        view.configuration?.imagePlacement = .top
        view.configuration?.imagePadding = 8
        view.titleLabel?.font = .systemFont(ofSize: 8)
        
        return view
    }()
    
    let playButton: UIButton = {
        let view = UIButton()
//        view.backgroundColor = .clear
        view.setImage(UIImage(named: "play_normal"), for: .normal)
        return view
    }()
    
    let infoButton: MainViewButton = {
        let view = MainViewButton(configuration: UIButton.Configuration.plain())
        view.setTitle("정보", for: .normal)
        view.setImage(UIImage(named: "info"), for: .normal)
        view.configuration?.imagePlacement = .top
        view.configuration?.imagePadding = 5
        return view
    }()
    
    let firstPreviewImageView: PreviewImageView = {
        let view = PreviewImageView(frame: CGRect(x: 0, y: 0, width: 110, height: 110))
        view.image = UIImage(named: "광해")
        return view
    }()
    
    let secondPreviewImageView: PreviewImageView = {
        let view = PreviewImageView(frame: CGRect(x: 0, y: 0, width: 110, height: 110))
        view.image = UIImage(named: "암살")
        return view
    }()
    
    let thirdPreviewImageView: PreviewImageView = {
        let view = PreviewImageView(frame: CGRect(x: 0, y: 0, width: 110, height: 110))
        view.image = UIImage(named: "해운대")
        return view
    }()
    
    let previewLabel: WhiteTextLabel = {
        let view = WhiteTextLabel()
        view.text = "미리보기"
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        setContraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [movieImageView, backgroundImageView, CILabel, TVButton, movieButton, showLikeContentsButton, likeContenstButton, playButton, infoButton, firstPreviewImageView, secondPreviewImageView, thirdPreviewImageView, previewLabel].forEach { self.addSubview($0) }
    }
    
    override func setContraints() {
        movieImageView.snp.makeConstraints { make in
            make.leading.trailing.topMargin.equalTo(0)
            make.height.equalToSuperview().multipliedBy(0.8)
            
        }
        
        backgroundImageView.snp.makeConstraints { make in
            make.leading.trailing.topMargin.equalTo(0)
            make.height.equalTo(movieImageView)
        }
        
        CILabel.snp.makeConstraints { make in
            make.leading.equalTo(8)
            make.topMargin.equalTo(32)
            make.height.width.equalTo(40)
            
        }
        
        TVButton.snp.makeConstraints { make in
            make.leading.equalTo(CILabel.snp.trailing).offset(24)
            make.bottom.equalTo(CILabel)
            make.width.equalTo(90)
        }
        
        movieButton.snp.makeConstraints { make in
            make.leading.equalTo(TVButton.snp.trailing).offset(20)
            make.bottom.equalTo(CILabel)
            make.width.equalTo(52)
        }
        
        showLikeContentsButton.snp.makeConstraints { make in
            make.leading.equalTo(movieButton.snp.trailing).offset(20)
            make.bottom.equalTo(CILabel)
            make.width.equalTo(100 )
        }
        
        likeContenstButton.snp.makeConstraints { make in
            make.leading.equalTo(12)
            make.bottom.equalTo(playButton.snp.bottom)
            make.width.equalTo(140)
        }
        
        playButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(backgroundImageView.snp.bottom).offset(-20)
            make.width.equalTo(80)
        }
        
        infoButton.snp.makeConstraints { make in
            make.leading.equalTo(playButton.snp.trailing).offset(12)
            make.bottom.equalTo(playButton.snp.bottom).offset(8)
            make.width.equalTo(120)
        }
        
        firstPreviewImageView.snp.makeConstraints { make in
            make.top.equalTo(previewLabel.snp.bottom).offset(8)
            make.leading.equalTo(8)
            make.width.height.equalTo(110)
        }
        
        secondPreviewImageView.snp.makeConstraints { make in
            make.top.equalTo(previewLabel.snp.bottom).offset(8)
            make.leading.equalTo(firstPreviewImageView.snp.trailing).offset(16)
            make.width.height.equalTo(110)
        }
        
        thirdPreviewImageView.snp.makeConstraints { make in
            make.top.equalTo(previewLabel.snp.bottom).offset(8)
            make.leading.equalTo(secondPreviewImageView.snp.trailing).offset(16)
            make.width.height.equalTo(110)
        }
        
        previewLabel.snp.makeConstraints { make in
            make.top.equalTo(backgroundImageView.snp.bottom).offset(8)
            make.leading.equalTo(8)
            make.width.equalTo(100)
        }
        
    }
    
}
