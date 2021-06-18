//
//  ContentView.swift
//  WhatsApp animation MVVM
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var animation
    @StateObject var data = DetailViewModel()
    
    var body: some View {
        MessagesList(animation: animation)
            .environmentObject(data)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
