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
            Text(movie.title)
        }.refreshable {
            await refresh()
        }.task {
            await refresh()
        }
    }
    
    func refresh() async {
        movies = await downloadMovies()
    }
    
    @State var movies = [Movie]()// Konstante
    
}

func downloadMovies() async -> [Movie] {
    // TODO: Download movies
    //let apiKey = "???"
    // let urlString = "???"
    
    // Schamlos geklaut vom Lehrer Sebastian Fichtner:
    let apiKey = "59c98f37425372d96f2137ad9e981bd5"
    let urlString = "https://api.themoviedb.org/3/movie/popular?api_key=\(apiKey)"
    
    guard let url = URL(string: urlString) else {
        print("Error: could not create URL from String: \(urlString)")
        return []
    }

    let (data, _) = try! await URLSession.shared.data(from: url)
    let tmdbResponse = try! JSONDecoder().decode(TMDBResponse.self, from: data)
    
    return tmdbResponse.results
}

struct TMDBResponse: Decodable {
    let results: [Movie]
}

struct Movie: Identifiable, Equatable, Decodable {
    let title: String
    let id: Int
    let poster_path: String
}

#Preview {
    ContentView()
}


//*xcuserdata/
