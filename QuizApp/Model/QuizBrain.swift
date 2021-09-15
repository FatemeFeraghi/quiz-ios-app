//
//  QuizBrain.swift
//  QuizApp
//
//  Created by english on 2021-09-14.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Abraham Lincoln had no middle name.", a: "True"),
        Question(q: "Germany drinks the most beer in the world per person.", a: "False"),
        Question(q: "Nemo is a puffer fish.", a: "False"),
        Question(q: "There was no World Series in 1994.", a: "True"),
        Question(q: "Broccoli was once banned from the White House.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Pinocchio was the first animated, full-color Walt Disney feature film.", a: "False"),
        Question(q: "In the Star Wars franchise movies, the voice of Yoda is played by the same person who did the voices of Miss Piggy, Grover, and Cookie Monster.", a: "True"),
        Question(q: "There are 100 dimples on a golf ball", a: "False"),
        Question(q: "Mario of Super Mario Bros. fame was once a carpenter.", a: "True")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
