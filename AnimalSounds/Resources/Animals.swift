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

    case lion
    case wolf
    case ostrich
    case seal
    case camel
    
    case panda
    case giraffe
    case zebra
    case tiger
    case rhinoceros
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
        case .lion:
            return UIImage(named: "lion_ic")!
        case .wolf:
            return UIImage(named: "wolf_ic")!
        case .ostrich:
            return UIImage(named: "ostrich_ic")!
        case .seal:
            return UIImage(named: "seal_ic")!
        case .camel:
            return UIImage(named: "camel_ic")!
        case .panda:
            return UIImage(named: "panda_ic")!
        case .giraffe:
            return UIImage(named: "giraffe_ic")!
        case .zebra:
            return UIImage(named: "zebra_ic")!
        case .tiger:
            return UIImage(named: "tiger_ic")!
        case .rhinoceros:
            return UIImage(named: "rhinoceros_ic")!
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
        case .lion:
            return UIColor(named: "lion_bg")!
        case .wolf:
            return UIColor(named: "wolf_bg")!
        case .ostrich:
            return UIColor(named: "ostrich_bg")!
        case .seal:
            return UIColor(named: "seal_bg")!
        case .camel:
            return UIColor(named: "camel_bg")!
        case .panda:
            return UIColor(named: "panda_bg")!
        case .giraffe:
            return UIColor(named: "giraffe_bg")!
        case .zebra:
            return UIColor(named: "zebra_bg")!
        case .tiger:
            return UIColor(named: "tiger_bg")!
        case .rhinoceros:
            return UIColor(named: "rhinoceros_bg")!
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
        case .lion:
            return "lion"
        case .wolf:
            return "wolf"
        case .ostrich:
            return "ostrich"
        case .seal:
            return "seal"
        case .camel:
            return "camel"
        case .panda:
            return "panda"
        case .giraffe:
            return "giraffe"
        case .zebra:
            return "zebra"
        case .tiger:
            return "tiger"
        case .rhinoceros:
            return "rhinoceros"
        }
    }
}
