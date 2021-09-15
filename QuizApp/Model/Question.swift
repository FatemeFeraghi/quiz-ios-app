//
//  Question.swift
//  QuizApp
//
//  Created by english on 2021-09-14.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
