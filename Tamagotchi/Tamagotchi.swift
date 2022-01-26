//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Vanichjakvong, Jakpat (IRG) on 19/01/2022.
//

import Foundation

struct Tamagotchi {
    var age = 0 //0-23
    var weight = 0.0
    
    var discipline = 0 { //0-13
        didSet {
            if discipline < 0 {
                discipline = 0
            } else if discipline > 13 {
                discipline = 13
            }
        }
    }
    var hunger = 0 { //0-4
        didSet {
            if hunger < 0 {
                hunger = 0
            } else if hunger > 4 {
                hunger = 4
            }
        }
    }
    var happiness = 0 { //0-4
        didSet {
            if happiness < 0 {
                happiness = 0
            } else if happiness > 4 {
                happiness = 4
            }
        }
    }
    
    
    
    mutating func feedMeal() {
        hunger += 2
    }
    mutating func feedSnack() {
        hunger += 1
    }
    mutating func play() {
        happiness += 1
    }
    mutating func scold() {
        discipline += 1
    }

    mutating func passTime() {
        age += 1
        weight += 2.4
        discipline -= 2
        hunger -= 1
        happiness -= 1
    }
}
