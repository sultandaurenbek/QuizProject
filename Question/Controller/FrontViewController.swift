//
//  FrontViewController.swift
//  Question
//
//  Created by Султан Дауренбек on 6/6/19.
//  Copyright © 2019 Султан Дауренбек. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    

    @IBOutlet weak var startbutton: UIButton!
    
    static var str: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    
    
    }
    
    @IBAction func buttonpressed(_ sender: Any) {
        if username.text != ""{
            FrontViewController.str = username.text!; performSegue(withIdentifier: "showQuiz", sender: self)
        }
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