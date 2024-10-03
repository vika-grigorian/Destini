//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let story = [Story(title: "You see a fork in the road",
                        choice1: "Take a left",
                        choice2: "Take a right"),
                 Story(title: "You see a tiger",
                       choice1: "Shout for help",
                       choice2: "Play dead"),
                 Story(title: "You find a treasure chest",
                       choice1: "Open it",
                       choice2: "Check for traps"),
    ]
    
    var storyNumber: Int = 0
    
    func getStoryLabel() -> String {
        return story[storyNumber].title
    }
    
    func getChoice1Label() -> String {
        return story[storyNumber].choice1
    }
    
    func getChoice2Label() -> String {
        return story[storyNumber].choice2
    }
    
    mutating func nextStory(_ userChoice: String) {
        
        if userChoice == story[storyNumber].choice1 {
            storyNumber += 1
        } else if userChoice == story[storyNumber].choice2 {
            storyNumber += 2
        }
        
        if storyNumber >= story.count {
                    storyNumber = 0 // Можно сбросить индекс, чтобы начать сначала
                }
    }
}
