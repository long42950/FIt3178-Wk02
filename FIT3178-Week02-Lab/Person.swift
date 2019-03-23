//
//  Person.swift
//  FIT3178-Week02-Lab
//
//  Created by Chak Lee on 12/3/19.
//  Copyright © 2019 Chak Lee. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name:String?
    var house:String?
    var age:Int?
    
    init(name:String, house:String, age: Int) {
        self.name = name
        self.house = house
        self.age = age
    }
}
