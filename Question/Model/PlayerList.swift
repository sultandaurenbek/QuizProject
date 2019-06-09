//
//  PlayerList.swift
//  Question
//
//  Created by Султан Дауренбек on 6/9/19.
//  Copyright © 2019 Султан Дауренбек. All rights reserved.


import Foundation
import UIKit
class PlayerList{
var table = [Player] ()



init(){
   
  table.append(Player(score: ViewController.lastscore,username: "\(FrontViewController.str)"))
   
}
}


   




