//
//  UserModel.swift
//  GrassRoots-SwiftUI
//
//  Created by Nikola Winata on 7/9/22.
//

import Foundation

struct User: Codable {
    var firstName: String
    var lastName: String
    var email: String
    var isAdmin: Bool
}
