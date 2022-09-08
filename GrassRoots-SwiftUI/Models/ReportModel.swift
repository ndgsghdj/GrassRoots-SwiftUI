//
//  ReportModel.swift
//  GrassRoots-SwiftUI
//
//  Created by Nikola Winata on 8/9/22.
//

import Foundation

struct Report: Codable {
    var name: String
    var gender: String
    var dob: Date
    var race: String
    var language: String
    var residence: String
    var postalCode: Int
    var road: String
    var blockno: String
    var unitno: String
    var homecontact: String
    var mobilecontact: String
    var remarks: String
}

