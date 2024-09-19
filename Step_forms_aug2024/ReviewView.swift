//
//  ReviewView.swift
//  Step_forms_aug2024
//
//  Created by mac on 26/08/24.
//

import SwiftUI

struct ReviewView: View {
    let personData: PersonData
    
    var body: some View {
        Form {
            Section {
                Text(personData.personal.firstname)
                Text(personData.personal.lastname)
            } header: {
                Text("Personal Info")
            }

            Section {
                Text(personData.damageInfo.title)
                Text(personData.damageInfo.description)
            } header: {
                Text("Damage Info")
            }
            
            Section {
                Text(personData.address.street)
                Text(personData.address.city)
                Text(personData.address.pincode)
            } header: {
                Text("Address Info")
            }
        }
    }
}

//#Preview {
//    ReviewView()
//}
