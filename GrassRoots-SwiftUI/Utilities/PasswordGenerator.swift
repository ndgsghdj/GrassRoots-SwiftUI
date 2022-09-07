//
//  PasswordGenerator.swift
//  GrassRoots-SwiftUI
//
//  Created by Nikola Winata on 7/9/22.
//

import Foundation

func generatePassword(passwordLength: Int) -> String {
    
    let passwordMaterial : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    let passwordMaterialLength = UInt32(passwordMaterial.length)
    
    var returnValue = ""
    
    for _ in 0 ..< passwordLength {
        let randomPosition = arc4random_uniform(passwordMaterialLength)
        var character = passwordMaterial.character(at: Int(randomPosition))
        returnValue += NSString(characters: &character, length: 1) as String
    }
    
    return returnValue
}
