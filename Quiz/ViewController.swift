//
//  ViewController.swift
//  Quiz
//
//  Created by Roman Sheydvasser on 10/7/16.
//  Copyright © 2016 dpanik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["What is cognac made of?", "What is 7+7?",
                               "What is the capital of Vermont?"]
    let answers: [String] = ["Grapes","14","Montpelier"]
    var currentQuestionIndex: Int = 0

    @IBAction func showNextQuestion(sender: AnyObject) {
        answerLabel.text = "???"
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count { currentQuestionIndex = 0 }
        questionLabel.text = questions[currentQuestionIndex]
    }

    @IBAction func showAnswer(sender: AnyObject) {
        answerLabel.text = answers[currentQuestionIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

}

