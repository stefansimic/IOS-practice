//
//  ContentView.swift
//  IOS_MODULE_LEARN_APP
//
//  Created by Stefan Simić on 26.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            movies.shuffle()
        } label:  {
            Text("Shuffle")
        }
        List (movies, id: \.self) { movie in // \ keypath
                Text("this represents movie \(movie)")
        }.animation(.default, value: movies)
    }
    
    
    @State var movies = [1, 2, 3, 7, 100, 121, 9999] // Konstante
    
}

#Preview {
    ContentView()
}


//*xcuserdata/
