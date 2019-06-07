//
//  QuestionList.swift
//  Question
//
//  Created by Султан Дауренбек on 6/6/19.
//  Copyright © 2019 Султан Дауренбек. All rights reserved.
//

import Foundation

class QuestionList{
    var list = [Question] ()
    
    init(){
        list.append(Question(image: "flag1", questionText: "Хавез Асад умер в 2000 году.В какой стране ол был президентом?", choiceA: "Сирия", choiceB: "Катар", choiceC: "Ливия", choiceD: "Израйль", answer: 1))
        
        list.append(Question(image: "flag2", questionText: "После выборов в Великобритании в 2010 году,Консервативная партия правит вместе с Либеральным Демократами.Кто является лидером последней?", choiceA: "Шарлин Стоун", choiceB: "Бредли Джонс", choiceC: "Вилли Карлин", choiceD: "Ник клегг", answer: 4))
        
        list.append(Question(image: "flag3", questionText: "Сколько людей погибло при цунами и землетресении,которые произошли в Тохику 11 марта в 2011 году?", choiceA: "18400", choiceB: "12000", choiceC: "13500", choiceD: "15600", answer: 1))
        
        list.append(Question(image: "flag4", questionText: "Силовыми станциями клетки являются?", choiceA: "Ядра", choiceB: "Лизосомы", choiceC: "Митохондрии", choiceD: "Рибосомы", answer: 3))
            
        list.append(Question(image: "flag5", questionText: "Физиология изучает?", choiceA: "Строение тканей", choiceB: "Жизнедеятельность организма", choiceC: "Химическии состав клеток", choiceD: "Взаимоотношение организма", answer: 2))
        
        list.append(Question(image: "flag6", questionText: "Совокупность особей одного вида, имеющих единый генофонд и занимающих единую территорию называется?", choiceA: "Популяцией", choiceB: "Биоценозм", choiceC: "Биосферой", choiceD: "Биогеценозм", answer: 1))
    }
}
