//
//  Animal.swift
//  Animal Sounds
//
//  Created by Mehmet Ali Demir on 22.10.2022.
//

import Foundation

class Animal {


    let id: AnimalType
    let name: String
    let info: String
    let group: Group
    let sound: String
    var isPlaying: Bool

    internal init(id: AnimalType, name: String, info: String, group: Group, sound: String, isPlaying: Bool = false) {
        self.id = id
        self.name = name
        self.info = info
        self.group = group
        self.sound = sound
        self.isPlaying = isPlaying
    }
}
