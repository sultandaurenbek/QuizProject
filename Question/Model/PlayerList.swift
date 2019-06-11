//
//  PlayerList.swift
//  Question
//
//  Created by Султан Дауренбек on 6/9/19.
//  Copyright © 2019 Султан Дауренбек. All rights reserved.


import Foundation
import UIKit
class PlayerList{
var table: [Player] = []
    var player1 = Player(score: ViewController.lastscore, username: "\(FrontViewController.str)", level: FrontViewController.level )
    
//var players: [Player] = []
    

init(){
    
  table.append(player1)
   
   
}

}

   




