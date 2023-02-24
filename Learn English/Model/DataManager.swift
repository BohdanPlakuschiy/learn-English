//
//  DataManager.swift
//  Learn English
//
//  Created by Богдан Плакущий on 16.02.2023.
//

import Foundation

final class DataManager {
    static let instance = DataManager()
    
    private init() {
        generateWords()
    }
    
    private(set) var newWords: [Word] = []
    private(set) var historyWords: [Word] = []
    
    private func generateWords() {
        let go = Word(word: "Go", translation: "Идти")
        let why = Word(word: "Why", translation: "Почему")
        let angry = Word(word: "Angry", translation: "Злой")
        let that = Word(word: "That", translation: "Что")
        let gWhere = Word(word: "Where", translation: "Где")
        
        newWords = [go, why, angry, that, gWhere]
    }
    
    func addWords(_ words: Word) {
        newWords.insert(words, at: 0)
    }
    
    func markAsDelete(_ word: Word) {
        guard let removeIndex = newWords.index(of: word) else { return }
         newWords.remove(at: removeIndex)
        historyWords.insert(word, at: 0)
    }
}
