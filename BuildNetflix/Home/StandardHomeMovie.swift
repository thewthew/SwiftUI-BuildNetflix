//
//  StandardHomeMovie.swift
//  BuildNetflix
//
//  Created by Matthew Usdin on 11/12/21.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
            
    }
}
