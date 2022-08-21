//
//  MainViewController.swift
//  CodeBaseNetflix
//
//  Created by yongseok lee on 2022/08/19.
//

import UIKit

class MainViewController: BaseViewController {
    
    var mainView = MainView()
    
    override func loadView() {
        self.view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("mainViewController")
        
    }
    
    override func configure() {
        
    }
    
}
