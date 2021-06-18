//
//  MessagesList.swift
//  WhatsApp animation MVVM
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

struct MessagesList: View {
    var animation: Namespace.ID
    @EnvironmentObject var data: DetailViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .leading, spacing: 15, content: {
                Text("WhatsApp")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .padding(.top)
                
                ForEach(recents) { recent in
                    RecentRow(recent: recent, animation: animation)
                }
            })
        }).overlay(
            ZStack {
                if data.showProfile {
                    ProfileDetailView(animation: animation)
                }
            })
    }
}

