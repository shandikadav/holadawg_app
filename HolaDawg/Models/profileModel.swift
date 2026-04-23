//
//  profileModel.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 23/04/26.
//

import Foundation

struct Profile: Identifiable, Hashable {
    let id = UUID()
        let name: String
        let rating: String
        let bio: String
        let tags: [String]
        let imageName: String
}
