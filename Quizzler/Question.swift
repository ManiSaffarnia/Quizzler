//
//  Question.swift
//  Quizzler
//
//  Created by mani saffarnia on 12/29/17.
//  Copyright © 2017 Mani Saffarnia. All rights reserved.
//

import Foundation

class Question{
    
    var text: String
    var correctAnswer: Bool
    
    init(text:String , correctAnswer:Bool){
        self.text = text
        self.correctAnswer = correctAnswer
    }
}
