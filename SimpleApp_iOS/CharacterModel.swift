//
//  CharacterModel.swift
//  SimpleApp_iOS
//
//  Created by Irene Hernández on 29/6/22.
//

import Foundation
import UIKit
struct CharacterModel{
    var name: Array<String> = []
    var age: Array<String> = []
    var info: Array<String> = []
    var attack: Array<String> = []
    var hp: Array<String> = []
    var defense: Array<String> = []
    var images: Array<UIImage> = []
    var imageOne = UIImage(named: "sword.png")
    var imageTwo = UIImage(named: "life.png")
    var imageThree = UIImage(named: "shield.png")
    
//    init(name: Array<String>, age: String, info: String, attack: String, hp: String, defense: String, imageOne: UIImage, imageTwo: UIImage, imageThree: UIImage) {
//        self.name = []
//        self.age = []
//        self.info = []
//        self.attack = []
//        self.hp = []
//        self.defense = []
//        self.images = []
//        self.imageOne = imageOne
//        self.imageTwo = imageTwo
//        self.imageThree = imageThree
//    }
}
var character = CharacterModel ()

