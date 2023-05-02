//
//  FirstViewController.swift
//  finalTask4
//
//  Created by Абдулла-Бек on 2/5/23.
//

import Foundation
import UIKit
import SnapKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
    }
    
    private func setupSubviews() {
        
        let welcomeLabel = UILabel()
            welcomeLabel.text = "Добро пожаловать в наше приложение"
            welcomeLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
            welcomeLabel.textAlignment = .center
            view.addSubview(welcomeLabel)
            
            let startButton = UIButton(type: .system)
            startButton.setTitle("Начать", for: .normal)
            startButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
            view.addSubview(startButton)
            
            welcomeLabel.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview()
            }
            startButton.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(welcomeLabel.snp.bottom).offset(100)
            }
    }
    
    @objc private func startButtonTapped() {
        let defaults = UserDefaults.standard
        defaults.set("SecondViewController", forKey: "lastViewController")
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}


