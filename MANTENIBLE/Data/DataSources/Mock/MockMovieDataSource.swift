//
//  MockMovieDataSource.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import Foundation

final class MockMovieDataSource: MovieDataSourceProtocol {
    func fetchMovies() async throws -> [MovieDTO] {
        return [
            MovieDTO(
                id: 1,
                title: "Mock Movie 1",
                overview: "Overview 1",
                poster_path: "/mock1.jpg",
                release_date: "2024-03-09"
            ),
            MovieDTO(
                id: 2,
                title: "Mock Movie 2",
                overview: "Overview 2",
                poster_path: "/mock2.jpg",
                release_date: "2024-03-10"
            )
        ]
    }
}
