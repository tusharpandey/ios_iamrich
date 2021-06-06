//
//  QuizModel.swift
//  IamRich
//
//  Created by itsupport on 03/06/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import Foundation

struct Question {
    var question : String = ""
    var answer : Bool = false
    
    init(question : String, answer : Bool) {
        self.question = question
        self.answer = answer
    }
}

struct QuizModel {
    var questionNumber : Int = -1
        
    let questionArray : [Question] = [
        Question(question:"Delhi is in India", answer:true),
        Question(question:"Uttrakhand Capital is Almora", answer:false),
        Question(question:"Chandra is my brother", answer:true),
        Question(question:"Poem works in google", answer:false),
    ]
    
    mutating func getCurrentQuestion() -> String{
        if questionNumber >= questionArray.count - 1 {
            questionNumber = -1
        }
        questionNumber = questionNumber + 1
        print("questionNumber \(questionNumber)")
        return questionArray[questionNumber].question
    }
    
    func getCurrentAnswer() -> Bool {
        return questionArray[questionNumber].answer
    }
            
    func checkAnswer(answer : Bool) -> Bool {
        return answer == self.getCurrentAnswer() ? true : false
    }
    
}
