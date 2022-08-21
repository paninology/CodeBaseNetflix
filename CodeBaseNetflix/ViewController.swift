//
//  ViewController.swift
//  CodeBaseNetflix
//
//  Created by yongseok lee on 2022/08/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let vc = MainViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }

}

