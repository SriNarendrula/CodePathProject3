//
//  triviaViewController.swift
//  Trivia
//
//  Created by Sri Narendrula on 3/15/25.
//

import UIKit

class triviaViewController: UIViewController {
    
    private var correct=0
    private var currentQuestionIndex=0
    struct Question {
        let question: String
        let answer: [String]
        let correctAnswer: String
    }
    @IBOutlet weak var question: UILabel!
    
    private var questions: [Question] = [
        Question(question: "What is the capital of France?", answer: ["Paris", "Rome", "Berlin", "Madrid"], correctAnswer: "Paris"),
        Question(question: "Which planet is known as the Red Planet?", answer: ["Earth", "Mars", "Venus", "Jupiter"], correctAnswer: "Mars"),
        Question(question: "Who wrote 'Romeo and Juliet'?", answer: ["Shakespeare", "Hemingway", "Dickens", "Austen"], correctAnswer: "Shakespeare")
    ]
    
    @IBOutlet weak var answer1t: UILabel!
    
    @IBOutlet weak var answer2t: UILabel!
    
    @IBOutlet weak var answer3t: UILabel!
    
    @IBOutlet weak var answer4t: UILabel!
    
    @IBAction func answer1(_ sender: Any) {
        if currentQuestionIndex<2{
            updateUI()
        }
        
    }
    
    @IBAction func answer2(_ sender: Any) {
        if currentQuestionIndex<2{
            updateUI()
        }
    }
    
    @IBAction func answer3(_ sender: Any) {
        if currentQuestionIndex<2{
            updateUI()
        }
    }
    
    @IBAction func answer4(_ sender: Any) {
        if currentQuestionIndex<2{
            updateUI()
        }
    }
    private func updateUI() {
            // Get the current question
        currentQuestionIndex=currentQuestionIndex+1

            // Update the question label
        question.text = questions[currentQuestionIndex].question
        answer1t.text = questions[currentQuestionIndex].answer[0]
        answer2t.text = questions[currentQuestionIndex].answer[1]
        answer3t.text = questions[currentQuestionIndex].answer[2]
        answer4t.text = questions[currentQuestionIndex].answer[3]

        
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = questions[currentQuestionIndex].question
        answer1t.text = questions[currentQuestionIndex].answer[0]
        answer2t.text = questions[currentQuestionIndex].answer[1]
        answer3t.text = questions[currentQuestionIndex].answer[2]
        answer4t.text = questions[currentQuestionIndex].answer[3]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
