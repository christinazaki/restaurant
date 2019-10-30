//
//  meal.swift
//  ResFirstProject
//
//  Created by christina zaki on 9/21/19.
//  Copyright © 2019 christina zaki. All rights reserved.
//

import UIKit

class meal {
    var Name  : String?
    var Image : String?
    var Des: String?
    var Quantity : Int?
    var Price : Int?
    /*init(Name:String,Image:String) {
     
        self.Image = Image
        self.Name = Name
       
    }*/
    init(Name:String,Image:String,Des: String, Quantity : Int,Price : Int) {
        self.Image = Image
        self.Name = Name
        self.Des = Des
        self.Quantity = Quantity
         self.Price = Price
    }
}
