//
//  mockData.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 23/04/26.
//

import Foundation

struct MockData {
    static let profiles: [Profile] = [
        Profile(
            name: "Parsee",
            rating: "4.5",
            bio: "I’m a bridge guardian from the Underworld. I speak clearly and at a steady pace, so you’ll be able to follow—if you’re paying attention. Don’t expect me to sugarcoat things; I’ll point out your mistakes as they are.",
            tags: ["🇯🇵 Native", "🇯🇵 JLPT N1"],
            imageName: "image-person1"
        ),
        Profile(
            name: "Satori",
            rating: "4.9",
            bio: "I can read your mind, so don't even try to hide your confusion. Learning Japanese with me is efficient because I know exactly where you're struggling before you even say a word. Welcome to the Palace of Earth Spirits.",
            tags: ["🇯🇵 Native", "🇯🇵 Mind Reader"],
            imageName: "image-person2"
        ),
        Profile(
            name: "AZKi",
            rating: "5.0",
            bio: "Virtual Singer traveling through worlds. I can help you with Japanese pitch accent and phonetics through the beauty of music. Let's find your voice and perfect your pronunciation together in a melodic way!",
            tags: ["🇯🇵 Native", "🇯🇵 V-Singer"],
            imageName: "image-person3"
        ),
        Profile(
            name: "Sakuya",
            rating: "4.8",
            bio: "Perfect and Elegant. I manage time efficiently, so every minute of our lesson will be maximized. If you're looking for a structured and disciplined approach to Japanese, I am at your service.",
            tags: ["🇯🇵 Native", "🇯🇵 Time Manager"],
            imageName: "image-person4"
        ),
        Profile(
            name: "Reimu",
            rating: "4.2",
            bio: "Shrine maiden of the Hakurei Shrine. I’m usually busy dealing with incidents, but I can spare some time for lessons if you donate to the shrine. My Japanese is casual and very direct. Simple as that.",
            tags: ["🇯🇵 Native", "🇯🇵 Casual Style"],
            imageName: "image-person5"
        )
    ]
}
