//
//  RecentRow.swift
//  WhatsApp animation MVVM
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

struct RecentRow: View {
    var recent: Profile
    var animation: Namespace.ID
    @EnvironmentObject var data: DetailViewModel
    
    var body: some View {
        HStack(spacing: 15) {
            Button(action: {
                withAnimation {
                    data.selectedProfile = recent
                    data.showProfile.toggle()
                }
            }, label: {
                ZStack {
                    Image(recent.profileImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    if !data.showProfile {
                        Image(recent.profileImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id: recent.id, in: animation)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    }
                }
            })
            .buttonStyle(PlainButtonStyle())
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text(recent.username)
                            .fontWeight(.bold)
                        
                        Text(recent.lastMsg)
                            .font(.caption)
                            .foregroundColor(.gray)
                    })
                    
                    Spacer()
                    Text(recent.time)
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
                Divider()
            }
        }.padding(.horizontal)
    }
}
