/*
//  Ryan Ge
// Feb 15, 2017
// Main function

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

// TODO: Reduce Repetitive Code


// Planet names
let planetData = ["Mercury": "A very hot planet, closest to the sun.",
"Venus": "Second planet from the sun. Poisonous atmosphere",
"Earth": "Third planet from the sun. Home sweet home",
"Mars": "The red planet. Matt Damon was stuck here.",
"Jupiter": "The largest planet in this solar system. A gas giant",
"Saturn": "The planet with the rings",
"Uranus": "Insert joke here. Who named this?",
"Neptune": "A very cold planet, furthest from the sun."]

// Name of system
let systemName = "Solar System"

let planets = planetData.map { name, description in
    Planet(name: name, description: description)
}

let solarSystem = PlanetarySystem(name: systemName, planets: planets)
let adventure = SpaceAdventure(planetarySystem: solarSystem)
adventure.start()


