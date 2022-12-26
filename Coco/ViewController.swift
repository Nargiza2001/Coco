//
//  ViewController.swift
//  Coco
//
//  Created by дройдер on 26.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        label.textColor = .white
        label.font = UIFont(name: "", size: 30)
        return label
    }()
    
    lazy var nameButton: UIButton = {
        let button = UIButton()
        button.setTitle("button", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(buttonDidTapped), for: .touchDown)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        configureTitleLabel()
        configureNameButton()
    }
    
    @objc func buttonDidTapped() {
        print("Button tapped")
    }
    
    private func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    private func configureNameButton() {
        
        view.addSubview(nameButton)
        nameButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleLabel.snp.bottom).offset(30)
            $0.width.equalTo(100)
        }
    }

}

