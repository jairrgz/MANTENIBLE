//
//  MovieListView.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import SwiftUI

struct MovieListView<ViewModel: MovieListViewModelProtocol>: View {
    
    @StateObject var viewModel:  ViewModel
    
    var body: some View {
        ZStack {
            Color.blue
            Group {
                switch viewModel.state {
                case .idle, .loading:
                    ProgressView()
                case .loaded(let movies):
                    VStack {
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(height: 20)
                        List(movies) { movie in
                            MainRowSubView(movie: movie)
                        }
                    }
                    
                case .error(let error):
                    ErrorView(error: error)
                }
            }
        }
       
        .task {
            await viewModel.loadMovies()
        }
    }
}

