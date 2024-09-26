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
        List (movies, id: \.id) { movie in // \ keypath, also bei Objekt: self.id bspw.
            Text("this represents movie \(movie.someMovieData)")
        }.animation(.default, value: movies)
    }
    
    
    @State var movies: [Movie] = [
        Movie(someMovieData: 1, id: 1),
        Movie(someMovieData: 2, id: 2),
        Movie(someMovieData: 3, id: 3),
        Movie(someMovieData: 3, id: 4),
        Movie(someMovieData: 4, id: 5),
    ] // Konstante
    
}

struct Movie: Equatable {
    let someMovieData: Int
    let id: Int
}

#Preview {
    ContentView()
}


//*xcuserdata/
