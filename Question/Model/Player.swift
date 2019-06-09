//
//  Player.swift
//  Question
//
//  Created by Султан Дауренбек on 6/9/19.
//  Copyright © 2019 Султан Дауренбек. All rights reserved.
//

import Foundation
class Player {
    var username: String = ""
    var score: Int = 0
    
    init( score: Int,username: String){
       
        self.score = score
         self.username = username
    }
}
