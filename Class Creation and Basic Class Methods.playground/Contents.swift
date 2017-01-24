//: Playground - noun: a place where people can play

import UIKit

//  Create Player class
class Player {
    //  Create Player class properties
    var name: String
    var health: Int
    var attack: Int
    var defense: Int
    
    //Initialize Player class properties
    init(name: String, health: Int, attack: Int, defense: Int) {
        self.name = name
        self.health = health
        self.attack = attack
        self.defense = defense
    }
    
    //  Give Player an option to attack another player
    func attackPlayer (opposingPlayer: Player) {
        //  opposingPlayer damage taken is calculated
        opposingPlayer.health -= (self.attack - opposingPlayer.defense)
        //  Ensure opposingPlayer dies if life is 0 or less.
        if opposingPlayer.health <= 0 {
            //  If life is brought into negatives, set it to 0
            opposingPlayer.health = 0
            //  Announce opposingPlayer's death
            print("\(opposingPlayer.name) has died.")
        }
    }
}

//  Create new players & give them stats
var hero = Player(name: "Hero", health: 100, attack: 30, defense: 10)
var villain = Player(name: "Villain", health: 120, attack: 35, defense: 5)

//  Trigger attacks and print life accordingly
hero.attackPlayer(opposingPlayer: villain)
print(villain.health)
hero.attackPlayer(opposingPlayer: villain)
print(villain.health)
hero.attackPlayer(opposingPlayer: villain)
print(villain.health)
hero.attackPlayer(opposingPlayer: villain)
print(villain.health)
hero.attackPlayer(opposingPlayer: villain)
print(villain.health)
