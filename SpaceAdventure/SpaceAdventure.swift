//  Ryan Ge
//  Feb 15, 2017
//  SpaceAdvanture.swift
//  SpaceAdventure
//
//  Created by Ryan on 2/8/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

class SpaceAdventure {
    
    let planetarySystem: PlanetarySystem
    
    init(planetarySystem: PlanetarySystem) {
        self.planetarySystem = planetarySystem
        
    }
    
    func start() {
        displayIntroduction()
        greetAdventurer()
        if (!planetarySystem.planets.isEmpty) {
            print("Let's go on an adventure")
            determineDestination()
        }
       
        
    }
    // Count planets and tells user about the system
    private func displayIntroduction() {
        print("Welcome to the \(planetarySystem.name)")
        print("There are \(planetarySystem.planets.count) planets to explore")
        
    }
    
    private func responseToPrompt(prompt: String) ->String {
        print(prompt)
        return getln()
    }
    // To ask the information about user
    private func greetAdventurer() {
        let name = responseToPrompt(prompt: "What is your name?")
        print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
    }
    private func determineDestination() {
        
        var decision = "" // Start with an empty String
        
        // To determine the decision of user (Yes or NO)
        while !(decision == "Y" || decision == "N") {
            decision = responseToPrompt(prompt: "Shall I randomly choose a planet for you to visit? (Y or N")
            if decision == "Y" {
                if let planet = planetarySystem.randomPlanet {
                    visit(planetName: planet.name)
                } else {
                    print("Sorry, but there are no planets to visit in this system.")
                }
            } else if decision == "N" {
                let planetName = responseToPrompt(prompt: "Ok, name the planet you would like to visit.")
                visit(planetName: planetName)
            } else {
                print("Sorry, I didn't get that.")
            }
            
        }
    }
    
    private func visit(planetName: String) {
        // To find the planet if it is in the list
        for planet in planetarySystem.planets {
            if planetName == planet.name {
                print("Traveling to \(planetName)...")
                print("Arrived at \(planet.name). \(planet.description)")
            } else {
                print("Can't find it.")
            }
                }
            }
            }

    

