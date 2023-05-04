//
//  ImageData.swift
//  ShoppingApp
//
//  Created by Harsh Rajput on 25/04/23.
//

import Foundation

struct FruitModel{
    var id: Int
    var title: fruitTitle
    var image: String
    var price: String
    var color: String
}

enum fruitTitle: String{
    case apple, apricot, avocado, banana, blackberry, cherry, dragonfruit, fig, grapes, greenpear, kiwi, lemon, mango, muskmelon, orange, papaya, pineapple, plum, respberry, restaurant, strawberry, watermelon
}
