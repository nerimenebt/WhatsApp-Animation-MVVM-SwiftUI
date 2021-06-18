//
//  DetailViewModel.swift
//  WhatsApp animation MVVM
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    
    @Published var showProfile = false
    @Published var selectedProfile: Profile!
    @Published var showLargedImage = false
    @Published var offset: CGFloat = 0
}
