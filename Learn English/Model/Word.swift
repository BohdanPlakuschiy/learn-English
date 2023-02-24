//
//  Word.swift
//  Learn English
//
//  Created by Богдан Плакущий on 16.02.2023.
//

import Foundation

struct Word: Equatable {
    let word: String
    let translation: String
    
    static func ==(lhs: Word, rhs: Word) -> Bool {
        return lhs.word == rhs.word && lhs.translation == rhs.translation
    }
}

