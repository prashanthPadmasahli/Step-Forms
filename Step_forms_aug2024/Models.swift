//
//  Models.swift
//  Step_forms_aug2024
//
//  Created by mac on 26/08/24.
//

import Foundation

struct PersonData {
    var personal = PersonalInfo()
    var damageInfo = DamageInfo()
    var address = Address()
}

struct PersonalInfo {
    var firstname: String = ""
    var lastname: String = ""
}

struct DamageInfo {
    var title: String = ""
    var description: String = ""
}

struct Address {
    var street: String = ""
    var city: String = ""
    var pincode: String = ""
}
