//
//  AddressView.swift
//  Step_forms_aug2024
//
//  Created by mac on 26/08/24.
//

import SwiftUI

struct AddressView: View {
    @Binding var address: Address
    
    var body: some View {
        Form {
            TextField("Street", text: $address.street)
            TextField("City", text: $address.city)
            TextField("Pincode", text: $address.pincode)
        }
    }
}

//#Preview {
//    AddressView()
//}
