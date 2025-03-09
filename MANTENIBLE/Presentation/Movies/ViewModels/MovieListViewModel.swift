//
//  MovieListViewModel.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import SwiftUI

@MainActor
final class MovieListViewModel: ObservableObject {
    enum State {
        case idle
        case loading
        case loaded([Movie])
        case error(Error)
    }
    
    @Published private(set) var state: State = .idle
    private let useCase: FetchMoviesUseCaseProtocol
    
    init(useCase: FetchMoviesUseCaseProtocol) {
        self.useCase = useCase
    }
    
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
