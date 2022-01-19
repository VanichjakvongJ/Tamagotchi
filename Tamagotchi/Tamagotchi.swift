//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Vanichjakvong, Jakpat (IRG) on 19/01/2022.
//

import Foundation

class Tamagotchi {
    var happy = 0 {
        didSet {
            if happy < 0 {
                happy = 0
            }
            else if happy > 4 {
                happy = 4
            }
        }
    }
    var hungry = 0 {
        didSet {
            if hungry < 0 {
                hungry = 0
            }
            else if hungry > 4 {
                hungry = 4
            }
        }
    }
    
    
    
        
    
    func eatSnack() {
        hungry += 1
    }
}
