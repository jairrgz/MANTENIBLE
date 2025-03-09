//
//  FetchMoviesUseCaseProtocol.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import Foundation

protocol FetchMoviesUseCaseProtocol {
    func execute() async throws -> [Movie]
}

final class FetchMoviesUseCase: FetchMoviesUseCaseProtocol {
    private let repository: MovieRepositoryProtocol
    
    init(repository: MovieRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() async throws -> [Movie] {
        try await repository.fetchMovies()
    }
}
