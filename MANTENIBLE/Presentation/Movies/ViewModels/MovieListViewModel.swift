//
//  MovieListViewModel.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import SwiftUI

final class MovieListViewModel: MovieListViewModelProtocol {
    
    // MARK: - PROPERTIES
    @Published private(set) var state: EnumStateOfMovie = .idle
    private let useCase: FetchMoviesUseCaseProtocol
    
    // MARK: - DESIGNATED INITIALIZER
    init(useCase: FetchMoviesUseCaseProtocol) {
        self.useCase = useCase
    }
    
    // MARK: - METHODS
    func loadMovies() async {
        state = .loading
        do {
            let movies = try await useCase.execute()
            state = .loaded(movies)
        } catch {
            state = .error(error)
        }
    }
}
