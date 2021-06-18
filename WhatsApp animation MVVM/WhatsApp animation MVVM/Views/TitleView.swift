//
//  TitleView.swift
//  WhatsApp animation MVVM
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

struct TitleView: View {
    var recent: Profile
    var animation: Namespace.ID
    
    var body: some View {
        Text(recent.username)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .matchedGeometryEffect(id: "TEXT_(recent.id)", in: animation)
            .frame(width: .infinity, alignment: .leading)
            .lineLimit(1)
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.black.opacity(0.35))
    }
}

