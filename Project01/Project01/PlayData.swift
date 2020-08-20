//
//  PlayData.swift
//  Project01
//
//  Created by Kelvin Reid on 8/17/20.
//  Copyright © 2020 Kelvin Reid. All rights reserved.
//

import Foundation

class PlayData {
    var allWords = [String]()
    var wordCounts = [String: Int]()
    
    init() {
        if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
            if let plays = try? String(contentsOfFile: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
                allWords = allWords.filter { $0 != "" }
                
                for word in allWords {
                    wordCounts[word, default: 0] += 1
                }
                
                allWords = Array(wordCounts.keys)
            }
        }
    }
}
