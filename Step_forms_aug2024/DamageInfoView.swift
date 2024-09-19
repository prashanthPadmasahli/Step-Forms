//
//  DamageInfoView.swift
//  Step_forms_aug2024
//
//  Created by mac on 26/08/24.
//

import SwiftUI

struct DamageInfoView: View {
    @Binding var damageInfo: DamageInfo
    
    var body: some View {
        Form {
            TextField("title", text: $damageInfo.title)
            TextField("Damage desc", text: $damageInfo.description)
        }
    }
    
}

//#Preview {
//    DamageInfoView()
//}
