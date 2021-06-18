//
//  BottomActions.swift
//  WhatsApp animation MVVM
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

struct BottomActions: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "message.fill")
                    .font(.title2)
                    .foregroundColor(Color.green)
            })
            Spacer(minLength: 0)
            Button(action: {}, label: {
                Image(systemName: "info.circle.fill")
                    .font(.title2)
                    .foregroundColor(Color.green)
            })
        }.padding(.horizontal, 60)
        .frame(height: 50)
        .background(Color.white)
    }
}

struct BottomActions_Previews: PreviewProvider {
    static var previews: some View {
        BottomActions()
    }
}
