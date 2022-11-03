//
//  Group.swift
//  Animal Sounds
//
//  Created by Mehmet Ali Demir on 22.10.2022.
//

import Foundation

enum GroupType: String {
    case group = "Group"
}

struct Group {
    let name: String
    let groupType: GroupType
}
