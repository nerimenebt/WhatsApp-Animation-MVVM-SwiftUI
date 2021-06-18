//
//  ProfileDetailView.swift
//  WhatsApp animation MVVM
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

struct ProfileDetailView: View {
    var animation: Namespace.ID
    @EnvironmentObject var data: DetailViewModel
    @GestureState var offset: CGFloat = 0
    
    var body: some View {
        ZStack(alignment: .top) {
            if data.selectedProfile != nil {
                if data.showLargedImage {
                    Image(data.selectedProfile.profileImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .matchedGeometryEffect(id: data.selectedProfile.id, in: animation)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: data.offset)
                        .gesture(DragGesture().updating($offset, body: {(value,out, _) in
                            out = value.translation.height
                        }).onEnded({ (value) in
                            let offset = data.offset > 0 ? data.offset : -data.offset
                            withAnimation {
                                if offset > 200 {
                                    data.showProfile.toggle()
                                    data.showLargedImage.toggle()
                                    data.selectedProfile = nil
                                }
                                data.offset = 0
                            }
                        })).background(Color.black.opacity(getOpacity())).ignoresSafeArea()
                    HStack(spacing: 20) {
                        Button(action: {
                            withAnimation {
                                data.showProfile.toggle()
                                data.showLargedImage.toggle()
                                data.selectedProfile = nil
                            }
                        }, label: {
                            Image(systemName: "arrow.left")
                                .font(.title2)
                                .foregroundColor(.white)
                        })
                        Text(data.selectedProfile.username)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .matchedGeometryEffect(id: "TEXT_(data.selectedProfile.id)", in: animation)
                        Spacer()
                    }.padding()
                } else {
                    Button(action: {
                        withAnimation(.easeInOut) {
                            data.showLargedImage.toggle()
                        }
                    }, label: {
                        Image(data.selectedProfile.profileImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay(TitleView(recent: data.selectedProfile, animation: animation), alignment: .top)
                    })
                    .overlay(BottomActions().offset(y: 50), alignment: .bottom)
                    .matchedGeometryEffect(id: data.selectedProfile.id, in: animation)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .frame(width: 300, height: 300)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        Color.black.opacity(0.2)
                            .ignoresSafeArea()
                            
                            .onTapGesture {
                                withAnimation {
                                    data.showProfile.toggle()
                                    data.selectedProfile = nil
                                }
                            })
                }
            }
        }.onChange(of: offset, perform: { value in
            data.offset = offset
        })
    }
    func getOpacity() -> Double {
        let offset = data.offset > 0 ? data.offset : -data.offset
        let progress  = offset / 200
        return 1 - Double(progress)
    }
}
