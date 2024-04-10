//
//  User.swift
//  Appetizers
//
//  Created by Kuiduan Zeng on 3/31/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthday = Date()
    var extraNapkins = false
    var frequentRefills = false
}
