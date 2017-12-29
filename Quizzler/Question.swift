//
//  Question.swift
//  Quizzler
//
//  Created by mani saffarnia on 12/29/17.
//  Copyright © 2017 Mani Saffarnia. All rights reserved.
//

import Foundation

class Question{
    
    var title: String
    var answer: Bool
    
    init(questionTitle:String , questionAnswer:Bool){
        title = questionTitle
        answer = questionAnswer
    }
}
