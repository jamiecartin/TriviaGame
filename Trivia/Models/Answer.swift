//
//  Answer.swift
//  Trivia
//
//  Created by Jamie Cartin on 4/3/23.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
