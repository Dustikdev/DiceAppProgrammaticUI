//
//  DiceVD_Ext.swift
//  Dicee-iOS13
//
//  Created by Никита Швец on 11.11.2022.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import UIKit

extension DiceVC {
    
    func configureBackgroundImageView() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.image = UIImage(named: "GreenBackground")
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "DiceeLogo")
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalToConstant: 150),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150)
        ])
    }
    
    func configureLeftDiceImageView() {
        view.addSubview(leftDiceImageView)
        leftDiceImageView.translatesAutoresizingMaskIntoConstraints = false
        leftDiceImageView.image = UIImage(named: "DiceOne")
        NSLayoutConstraint.activate([
            leftDiceImageView.widthAnchor.constraint(equalToConstant: 100),
            leftDiceImageView.heightAnchor.constraint(equalToConstant: 100),
            leftDiceImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            leftDiceImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75)
        ])
    }
    
    func configureRightDiceImageView() {
        view.addSubview(rightDiceImageView)
        rightDiceImageView.translatesAutoresizingMaskIntoConstraints = false
        rightDiceImageView.image = UIImage(named: "DiceOne")
        NSLayoutConstraint.activate([
            rightDiceImageView.widthAnchor.constraint(equalToConstant: 100),
            rightDiceImageView.heightAnchor.constraint(equalToConstant: 100),
            rightDiceImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            rightDiceImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75)
        ])
    }
    
    
    func configureRollButton() {
        view.addSubview(rollButton)
        rollButton.addTarget(self, action: #selector(rollButtonTapped), for: .touchUpInside)
        rollButton.translatesAutoresizingMaskIntoConstraints = false
        rollButton.layer.cornerRadius = 8
        rollButton.setTitle("Roll", for: .normal)
        rollButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .heavy)
        rollButton.backgroundColor = .systemRed
        NSLayoutConstraint.activate([
            rollButton.widthAnchor.constraint(equalToConstant: 80),
            rollButton.heightAnchor.constraint(equalToConstant: 50),
            rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rollButton.topAnchor.constraint(equalTo: rightDiceImageView.bottomAnchor, constant: 100)
        ])
    }
    
    @objc func rollButtonTapped() {
        leftDiceImageView.image = diceEdges.randomElement()
        rightDiceImageView.image = diceEdges.randomElement()
    }
}
