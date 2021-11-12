//
//  HomeVM.swift
//  BuildNetflix
//
//  Created by Matthew Usdin on 11/12/21.
//

import Foundation

class HomeVM: ObservableObject {
    
    @Published var movies : [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map { String($0) }
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedias"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Sci fi Movies"] = exampleMovies.shuffled()
    }
}
