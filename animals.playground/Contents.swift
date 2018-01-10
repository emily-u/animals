//: Playground - noun: a place where people can play

import UIKit

class Animal{
    var name: String
    var health: Int
    init(name: String, health: Int=100){
        self.name = name
        self.health = health
    }
    func displayHealth() {
        print(self.health)
    }
}

class Cat:Animal{
    init(name: String){
        super.init(name:name,health:150)
    }
    func growl(){
        print("Rawr!")
    }
    func run(){
        print("Running")
        self.health = health - 10
    }
}

class Lion:Cat{
    override init(name: String){
        super.init(name:name)
        health=200
    }
    override func growl(){
        print("ROAR!!!! I am the King of the Jungle")
    }
}

class Cheetah:Cat{
    override init(name: String){
        super.init(name:name)
        health=200
    }
    override func run(){
        print("Running Fast")
        if (self.health) > 200{
            print(self.health)
        }
        else if (self.health <= 200 && self.health > 50) {
        self.health -= 50
//            print(self.health)
        }
    }
    func sleep(){
        if self.health < 150{
            self.health += 50
        }else{
            self.health=200
        }
    }
}

var c = Cheetah(name:"Tom")
c.run()
c.run()
c.run()
c.run()
c.displayHealth()
var l = Lion(name:"Tim")
l.run()
l.run()
l.run()
l.growl()
l.displayHealth()
