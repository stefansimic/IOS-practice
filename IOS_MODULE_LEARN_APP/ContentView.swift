//
//  ContentView.swift
//  IOS_MODULE_LEARN_APP
//
//  Created by Stefan Simić on 26.09.2024.
//

import SwiftUI

struct ContentView: View {
    internal init(showOtherItems: Bool = true) {
        self.showOtherItems = showOtherItems
    }
    
    var body: some View {
        /*List {
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
        }*/
        let movies: [Int] = [1, 2, 3, 7, 100, 121, 9999] // Konstante
        
        List (1 ..< 21) { index in
                Text("this represents movie \(index)")
        }
    }
    
    @State var showOtherItems = true
}

#Preview {
    ContentView()
}


//*xcuserdata/
