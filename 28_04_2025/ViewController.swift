//
//  ViewController.swift
//  28_04_2025
//
//  Created by User on 26.04.25.
//

import UIKit

class ViewController: UIViewController {
    private let myLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " Daxil ol və ya qeydiyyatdan keç"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "key")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemYellow
        return imageView
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Daxil ol", for: .normal)
        button.backgroundColor = UIColor(named: "buttonColor")
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    
    private let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Qeydiyyat", for: .normal)
        button.backgroundColor = UIColor(named: "Color")
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(myImageView)
        view.addSubview(myLabel)
        view.addSubview(loginButton)
        view.addSubview(registerButton)
        
        NSLayoutConstraint.activate([
            myImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -32),
            myImageView.widthAnchor.constraint(equalToConstant: 200),
            myImageView.heightAnchor.constraint(equalToConstant: 200),
            
            myLabel.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 20),
            myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            loginButton.bottomAnchor.constraint(equalTo: registerButton.topAnchor, constant: -8),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginButton.heightAnchor.constraint(equalToConstant: 48),
            registerButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            registerButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}

