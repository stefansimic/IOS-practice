//
//  ContentView.swift
//  IOS_MODULE_LEARN_APP
//
//  Created by Stefan Simić on 26.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List (movies, id: \.id) { movie in // \ keypath, also bei Objekt: self.id bspw.
            Text("this represents movie \(movie.title)")
        }.refreshable {
            print("Refresh!")
            movies = downloadMovies()
        }
    }
    
    
    @State var movies: [Movie] = [
        Movie(title: "movieTitle 1"),
        Movie(title: "movieTitle 2"),
        Movie(title: "movieTitle 3"),
        Movie(title: "movieTitle 3"),
        Movie(title: "movieTitle 4"),
    ] // Konstante
    
}

func downloadMovies() -> [Movie] {
    // TODO: Download movies
    let apiKey = "???"
    let urlString =
    
    
    
    return []
}

struct Movie: Equatable {
    let title: String
    let id = UUID()
}

#Preview {
    ContentView()
}


//*xcuserdata/
