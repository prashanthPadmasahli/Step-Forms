//
//  ContentView.swift
//  Step_forms_aug2024
//
//  Created by mac on 26/08/24.
//

import SwiftUI

extension CaseIterable where Self: Equatable {
    func next() -> Self {
        let all = Self.allCases
        let idx = all.firstIndex(of: self)!
        let next = all.index(after: idx)
        return all[next == all.endIndex ? all.startIndex : next]
    }
    
    func previous() -> Self {
        let all = Self.allCases
        let idx = all.firstIndex(of: self)!
        let next = all.index(idx, offsetBy: -1)
        return all[next == all.endIndex ? all.startIndex : next]
    }
}

enum Step: Int, CaseIterable {
case personal = 1
case damage = 2
case address = 3
case review = 4

var title: String {
    switch self {
    case .personal: return "Personal Information"
    case .damage: return "Damage Information"
    case .address: return "Address Information"
    case .review: return "Review"
    }
}

func next1() -> Self? {
    switch self {
    case .personal: return .damage
    case .damage: return .address
    case .address: return .review
    case .review: return nil
    }
}

func previous1() -> Self? {
    switch self {
    case .personal: return nil
    case .damage: return .personal
    case .address: return .damage
    case .review: return .address
    }
}
}

struct ContentView: View {
    @State var personData = PersonData()
    @State var currentStep: Step = .personal
    
    var body: some View {
        NavigationStack {
                switch currentStep {
                case .personal:
                    PersonalInfoView(personalInfo: $personData.personal)
                case .damage:
                    DamageInfoView(damageInfo: $personData.damageInfo)
                case .address:
                    AddressView(address: $personData.address)
                case .review:
                    ReviewView(personData: personData)
                }
            
            HStack {
                if let previousStep = currentStep.previous1() {
                    Button("Previous") {
                        currentStep = currentStep.previous()
                    }
                }
                
                if let nextStep = currentStep.next1() {
                    Button("Next") {
                        currentStep = currentStep.next()
                    }
                } else {
                    Button("Submit") {
                        print("Submit data")
                    }
                }
            }
            .navigationTitle(currentStep.title)
        }
    }
}


#Preview {
    ContentView()
}
