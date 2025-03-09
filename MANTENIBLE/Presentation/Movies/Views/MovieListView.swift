//
//  MovieListView.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import SwiftUI

struct MovieListView: View {
    @StateObject var viewModel: MovieListViewModel
    
    var body: some View {
        Group {
            switch viewModel.state {
            case .idle, .loading:
                ProgressView()
            case .loaded(let movies):
                List(movies) { movie in
                    MovieRow(movie: movie)
                }
            case .error(let error):
                ErrorView(error: error)
            }
        }
        .task {
            await viewModel.loadMovies()
        }
    }
}

struct MovieRow: View {
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
