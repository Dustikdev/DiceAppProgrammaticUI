//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class DiceVC: UIViewController {
    
    let rollButton = UIButton()
    let backgroundImageView = UIImageView()
    let leftDiceImageView = UIImageView()
    let rightDiceImageView = UIImageView()
    let logoImageView = UIImageView()
    let diceEdges = Dice.edges
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureBackgroundImageView()
        configureLogoImageView()
        configureLeftDiceImageView()
        configureRightDiceImageView()
        configureRollButton()
    }
}

