//
//  TamagotchiTest.swift
//  TamagotchiTests
//
//  Created by Vanichjakvong, Jakpat (IRG) on 19/01/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {

    //GREEN
    func testEatSnackHungerDecreasesBy1() throws {
        //arrange
        let tamagotchi = Tamagotchi()
        tamagotchi.hungry = 0
        let expectedHungry = 1
        
        //act
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(tamagotchi.hungry, expectedHungry)
    }
    
    //RED
    func testWhereTamagotchiHasHunger0EatSnackKeepsHungerAt0() {
        //arrange
        let tamagotchi = Tamagotchi()
        tamagotchi.hungry = 4
        let expectedHungry = 4
        
        
        //act
        tamagotchi.eatSnack()
        
        //assert
        XCTAssertEqual(tamagotchi.hungry, expectedHungry)
    }

}

