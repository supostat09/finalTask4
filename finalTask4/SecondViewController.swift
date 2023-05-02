//
//  SecondViewController.swift
//  finalTask4
//
//  Created by Абдулла-Бек on 2/5/23.
//

import Foundation
import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let mainLabel = UILabel()
        mainLabel.text = "Главная"
        mainLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        mainLabel.textAlignment = .center
        view.addSubview(mainLabel)
        
        mainLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
