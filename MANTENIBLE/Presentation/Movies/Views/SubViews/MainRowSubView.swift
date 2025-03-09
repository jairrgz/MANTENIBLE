//
//  Untitled.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import SwiftUI

struct MainRowSubView: View {
    let movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(movie.title)
                .font(.headline)
            Text(movie.overview)
                .font(.subheadline)
                .lineLimit(2)
        }
    }
}

