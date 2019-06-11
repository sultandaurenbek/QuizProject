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
    
    @IBOutlet weak var mathbtn: UIButton!
    
    @IBOutlet weak var historybtn: UIButton!
    
    @IBOutlet weak var biologybtn: UIButton!
    
    @IBOutlet weak var startbutton: UIButton!
    
 

    static var str: String = ""
      static var level: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    
    
    }
    
    @IBAction func mathpressed(_ sender: Any) {
            FrontViewController.level = ""
        mathbtn.backgroundColor = .yellow
        historybtn.backgroundColor = .white
        biologybtn.backgroundColor = .white
         FrontViewController.level = "Math"
        
    }
    
    @IBAction func historypressed(_ sender: Any) {
       FrontViewController.level = ""
        historybtn.backgroundColor = .yellow
       mathbtn.backgroundColor = .white
        biologybtn.backgroundColor = .white
        FrontViewController.level = "History"
       
    }
    
    
    @IBAction func biologypressed(_ sender: Any) {
        FrontViewController.level = ""
        biologybtn.backgroundColor = .yellow
        historybtn.backgroundColor = .white
        mathbtn.backgroundColor = .white
          FrontViewController.level = "Biology"
    }
    
    @IBAction func buttonpressed(_ sender: Any) {
        if username.text != "" && FrontViewController.level != ""{
            FrontViewController.str = username.text!;
           
            
            
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(controller, animated: true)
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Fill out your name and select the section", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        
        
    }
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


