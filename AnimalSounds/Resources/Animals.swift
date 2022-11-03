//
//  Badges.swift
//  Animal Sounds
//
//  Created by Mehmet Ali Demir on 22.10.2022.
//

import UIKit

enum AnimalType {
    case dog
    case cat
    case horse
    case frog
    case bear
    case duck
    case fox
    case bee
    case cow
    case chicken
    
    case sheep
    case monkey
    case deer
    case pig
    case rabbit
    case turkey
    case rooster
    case donkey
    case elephant
    case snake
}

extension AnimalType {

    var badge: UIImage {
        switch self {
        case .dog:
            return UIImage(named: "dog_ic")!
        case .cat:
            return UIImage(named: "cat_ic")!
        case.horse:
            return UIImage(named: "horse_ic")!
        case.frog:
            return UIImage(named: "frog_ic")!
        case .bear:
            return UIImage(named: "bear_ic")!
        case .duck:
            return UIImage(named: "duck_ic")!
        case .fox:
            return UIImage(named: "fox_ic")!
        case .bee:
            return UIImage(named: "bee_ic")!
        case .cow:
            return UIImage(named: "cow_ic")!
        case .chicken:
            return UIImage(named: "chicken_ic")!
        case .sheep:
            return UIImage(named: "sheep_ic")!
        case .monkey:
            return UIImage(named: "monkey_ic")!
        case .deer:
            return UIImage(named: "deer_ic")!
        case .pig:
            return UIImage(named: "pig_ic")!
        case .rabbit:
            return UIImage(named: "rabbit_ic")!
        case .turkey:
            return UIImage(named: "turkey_ic")!
        case .rooster:
            return UIImage(named: "rooster_ic")!
        case .donkey:
            return UIImage(named: "donkey_ic")!
        case .elephant:
            return UIImage(named: "elephant_ic")!
        case .snake:
            return UIImage(named: "snake_ic")!
        }
    
    }

    var background: UIColor {
        switch self {
        case .dog:
            return UIColor(named: "dog_bg")!
        case .cat:
            return UIColor(named: "cat_bg")!
        case .horse:
            return UIColor(named: "horse_bg")!
        case .frog:
            return UIColor(named: "frog_bg")!
        case .bear:
            return UIColor(named: "bear_bg")!
        case .duck:
            return UIColor(named: "duck_bg")!
        case .fox:
            return UIColor(named: "fox_bg")!
        case .bee:
            return UIColor(named: "bee_bg")!
        case .cow:
            return UIColor(named: "cow_bg")!
        case .chicken:
            return UIColor(named: "chicken_bg")!
        case .sheep:
            return UIColor(named: "sheep_bg")!
        case .monkey:
            return UIColor(named: "monkey_bg")!
        case .deer:
            return UIColor(named: "deer_bg")!
        case .pig:
            return UIColor(named: "pig_bg")!
        case .rabbit:
            return UIColor(named: "rabbit_bg")!
        case .turkey:
            return UIColor(named: "turkey_bg")!
        case .rooster:
            return UIColor(named: "rooster_bg")!
        case .donkey:
            return UIColor(named: "donkey_bg")!
        case .elephant:
            return UIColor(named: "elephant_bg")!
        case .snake:
            return UIColor(named: "snake_bg")!
        }
    }

    var soundFile: String {
        switch self {
        case .dog:
            return "dog"
        case .cat:
            return "cat"
        case .horse:
            return "horse"
        case .frog:
            return "frog"
        case .bear:
            return "bear"
        case .duck:
            return "duck"
        case .fox:
            return "fox"
        case .bee:
            return "bee"
        case .cow:
            return "cow"
        case .chicken:
            return "chicken"
        case .sheep:
            return "sheep"
        case .monkey:
            return "monkey"
        case .deer:
            return "deer"
        case .pig:
            return "pig"
        case .rabbit:
            return "rabbit"
        case .turkey:
            return "turkey"
        case .rooster:
            return "rooster"
        case .donkey:
            return "donkey"
        case .elephant:
            return "elephant"
        case .snake:
            return "snake"
        }
    }
}
