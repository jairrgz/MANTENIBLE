//
//  MovieRepository.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import Foundation

final class MovieRepository: MovieRepositoryProtocol {
    private let dataSource: MovieDataSourceProtocol
    
    init(dataSource: MovieDataSourceProtocol) {
        self.dataSource = dataSource
    }
    
    func fetchMovies() async throws -> [Movie] {
        let dtos = try await dataSource.fetchMovies()
        return dtos.map { dto in
            Movie(
                id: dto.id,
                title: dto.title,
                overview: dto.overview,
                posterPath: dto.poster_path,
                releaseDate: DateFormatter.movieDate.date(from: dto.release_date) ?? Date()
            )
        }
    }
}
