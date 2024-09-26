//
//  ContentView.swift
//  IOS_MODULE_LEARN_APP
//
//  Created by Stefan Simić on 26.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Button {
                showOtherItems.toggle()
            } label : {
                Label( "Toggle other items", systemImage: "globe")
            }
            
            if showOtherItems {
                Text("This is a List item")
                Text("This is a List item")
                Text("This is a List item")
                Text("This is a List item")
                Text("This is a List item")
                Text("This is a List item")
                Text("This is a List item")
                Text("This is a List item")
            }
        }
    }
    
    @State var showOtherItems = true
}

#Preview {
    ContentView()
}


//*xcuserdata/
