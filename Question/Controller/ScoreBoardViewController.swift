//
//  ScoreBoardViewController.swift
//  Question
//
//  Created by Султан Дауренбек on 6/9/19.
//  Copyright © 2019 Султан Дауренбек. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let source = PlayerList()
    @IBOutlet weak var playrTableView: UITableView!
    
    
    @IBOutlet weak var restartbtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playrTableView.delegate = self
        playrTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.table.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let play = source.table[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreBoardCell", for: indexPath) as! ScoreBoardViewCell
        cell.setScoreBoardCell(username: play, score: play)
        return cell
    }
    
   
    @IBAction func restaract(_ sender: Any) {
  
      
        
       /* let controller = self.storyboard?.instantiateViewController(withIdentifier: "FrontViewController") as! FrontViewController
        self.present(controller, animated: true)
        */
        let firstController = ViewController()
        
        firstController.restartQuiz()
       
        
    
    
  
    }
}

