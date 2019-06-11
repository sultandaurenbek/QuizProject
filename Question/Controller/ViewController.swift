//
//  ViewController.swift
//  Question
//
//  Created by Султан Дауренбек on 6/5/19.
//  Copyright © 2019 Султан Дауренбек. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameuser: UILabel!
    
    @IBOutlet weak var levellabel: UILabel!
    
    @IBOutlet weak var QuestionCounter: UILabel!
    
    
    @IBOutlet weak var Score: UILabel!
 
    @IBOutlet weak var flagview: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var questionlabel: UILabel!
    
    @IBOutlet weak var Mistakes: UILabel!
    
    // outlet for the buttons
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
   
    let allQuestions = QuestionList()
    var questionNumber: Int = 0
    var score: Int = 0
    var mistakes: Int = 0
    var selectedAnswer: Int = 0
    static var lastscore: Int  = 0
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateQuestion()
        updateUI()

        
        
        // Do any additional setup after loading the view.
    }
  
    @objc func enableButton() {
    
        
      
        updatestate()
        
        
        
    }
    func updatestate(){
        
        optionA.backgroundColor = .black
        optionB.backgroundColor = .black
        optionC.backgroundColor = .black
        optionD.backgroundColor = .black
        optionA.isUserInteractionEnabled = true
        optionB.isUserInteractionEnabled = true
        optionC.isUserInteractionEnabled = true
        optionD.isUserInteractionEnabled = true
        showcorrectanswer()
      
    }
    func seescore(){
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoardViewController") as! ScoreBoardViewController
        self.present(controller, animated: true)
        
    }
 func showcorrectanswer(){
    
          questionNumber += 1
    updateQuestion()
    updateUI()
            

        }
    
    
   
 
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if sender.tag == selectedAnswer{
            
        
          
          
            sender.backgroundColor = .green
        
            _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(enableButton), userInfo: nil, repeats: false)
            optionA.isUserInteractionEnabled = false
            optionB.isUserInteractionEnabled = false
            optionC.isUserInteractionEnabled = false
            optionD.isUserInteractionEnabled = false
            
            
           
          
       //  sender.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
            score += 1
        }else if sender.tag != selectedAnswer
        {
            
            sender.backgroundColor = .red
            if(optionA.tag == selectedAnswer ){
                optionA.backgroundColor = .green
                }
            else if(optionB.tag == selectedAnswer ){
                optionB.backgroundColor = .green
            }
            else if(optionC.tag == selectedAnswer ){
                optionC.backgroundColor = .green
            }
           else if(optionD.tag == selectedAnswer ){
                optionD.backgroundColor = .green
            }
           
             _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(enableButton), userInfo: nil, repeats: false)
            mistakes += 1
            optionA.isUserInteractionEnabled = false
            optionB.isUserInteractionEnabled = false
            optionC.isUserInteractionEnabled = false
            optionD.isUserInteractionEnabled = false
     
       
        }
       
     
        
       
        
     
     
   
        updateQuestion()
        
        
       
     
        
    }
    
    func updateQuestion(){
      
            if FrontViewController.level == "History" && questionNumber <= allQuestions.listhistory.count - 1
            {
             
                flagview.image = UIImage(named:(allQuestions.listhistory[questionNumber].questionImage))
                questionlabel.text=allQuestions.listhistory[questionNumber].question
                optionA.setTitle(allQuestions.listhistory[questionNumber].optionA, for:UIControl.State.normal)
                optionB.setTitle(allQuestions.listhistory[questionNumber].optionB, for:UIControl.State.normal)
                optionC.setTitle(allQuestions.listhistory[questionNumber].optionC, for:UIControl.State.normal)
                optionD.setTitle(allQuestions.listhistory[questionNumber].optionD, for:UIControl.State.normal)
                selectedAnswer = allQuestions.listhistory[questionNumber].correctAnswer
            }
        
                    
        
       else if FrontViewController.level == "Biology" && questionNumber <= allQuestions.listbiology.count - 1
            {
                
            flagview.image = UIImage(named:(allQuestions.listbiology[questionNumber].questionImage))
            questionlabel.text=allQuestions.listbiology[questionNumber].question
            optionA.setTitle(allQuestions.listbiology[questionNumber].optionA, for:UIControl.State.normal)
            optionB.setTitle(allQuestions.listbiology[questionNumber].optionB, for:UIControl.State.normal)
            optionC.setTitle(allQuestions.listbiology[questionNumber].optionC, for:UIControl.State.normal)
            optionD.setTitle(allQuestions.listbiology[questionNumber].optionD, for:UIControl.State.normal)
            selectedAnswer = allQuestions.listbiology[questionNumber].correctAnswer
            }
            else if FrontViewController.level == "Math" && questionNumber <= allQuestions.listmath.count - 1
            {
                
                flagview.image = UIImage(named:(allQuestions.listmath[questionNumber].questionImage))
                questionlabel.text=allQuestions.listmath[questionNumber].question
                optionA.setTitle(allQuestions.listmath[questionNumber].optionA, for:UIControl.State.normal)
                optionB.setTitle(allQuestions.listmath[questionNumber].optionB, for:UIControl.State.normal)
                optionC.setTitle(allQuestions.listmath[questionNumber].optionC, for:UIControl.State.normal)
                optionD.setTitle(allQuestions.listmath[questionNumber].optionD, for:UIControl.State.normal)
                selectedAnswer = allQuestions.listmath[questionNumber].correctAnswer
            }
          else{
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoardViewController") as! ScoreBoardViewController
            self.present(controller, animated: true)
            
        }
 updateUI()
    }
    
    
    func updateUI(){
        levellabel.text = "\(FrontViewController.level)"
        Score.text = "Score: \(score)"
        Mistakes.text = "Mistakes: \(mistakes)"
        nameuser.text="\(FrontViewController.str )"
        if FrontViewController.level == "Biology"{
        QuestionCounter.text = "\(questionNumber + 1)/\(allQuestions.listbiology.count)"
        }
        if FrontViewController.level == "History"{
            QuestionCounter.text = "\(questionNumber + 1)/\(allQuestions.listhistory.count)"
        }
        if FrontViewController.level == "Math"{
            QuestionCounter.text = "\(questionNumber + 1)/\(allQuestions.listmath.count)"
        }
     ViewController.lastscore = score
 
   
    }
    
 func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
    


}

