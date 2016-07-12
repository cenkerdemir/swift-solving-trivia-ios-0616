//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    /*
     
     write your function here
     
     */
    
    func solveTrivia(statesAndCapitals: [String:String]) -> String {
        for (state, capital) in statesAndCapitals {
            var characterCounter = 0
            for stateCharacter in state.lowercaseString.characters {
                let str = String(stateCharacter)
                if capital.containsString(str) {
                    break;
                }
                characterCounter += 1
            }
            if characterCounter == state.characters.count {
                return state
            }
        }
        return "state not found"
    }
}

