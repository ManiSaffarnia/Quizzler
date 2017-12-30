//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let game = Quizzler()
    var selectedAnswer = false
    var questionTrackingNumber = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = game.questionList[questionTrackingNumber].text
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            selectedAnswer = true
        }else{
            selectedAnswer = false
        }
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        questionTrackingNumber += 1
        if questionTrackingNumber < game.questionList.count{
            questionLabel.text = game.questionList[questionTrackingNumber].text
        }else{
            print("finished")
        }
    }
    
    
    func checkAnswer() {
        if game.questionList[questionTrackingNumber].correctAnswer == selectedAnswer{
            print("you are right")
        }else{
            print("Wrong!")
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
