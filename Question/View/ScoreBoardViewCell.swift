//
//  ScoreBoardViewCell.swift
//  Question
//
//  Created by Султан Дауренбек on 6/9/19.
//  Copyright © 2019 Султан Дауренбек. All rights reserved.
//

import UIKit

class ScoreBoardViewCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setScoreBoardCell(username: Player, score: Player){
        scoreLabel.text = String(score.score)
       
        usernameLabel.text = username.username
    }
}

