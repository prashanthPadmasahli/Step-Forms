//
//  PersonalInfoView.swift
//  Step_forms_aug2024
//
//  Created by mac on 26/08/24.
//

import SwiftUI

struct PersonalInfoView: View {
    @Binding var personalInfo: PersonalInfo
    
    var body: some View {
        Form {
            TextField("First name", text: $personalInfo.firstname)
            TextField("Last name", text: $personalInfo.lastname)
        }
    }
}

//#Preview {
//    PersonalInfoView()
//}
