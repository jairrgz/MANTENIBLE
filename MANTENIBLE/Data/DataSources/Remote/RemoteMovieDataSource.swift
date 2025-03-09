//
//  RemoteMovieDataSource.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

final class RemoteMovieDataSource: MovieDataSourceProtocol {
    private let networkClient: NetworkClientProtocol
    
    init(networkClient: NetworkClientProtocol) {
        self.networkClient = networkClient
    }
    
    func fetchMovies() async throws -> [MovieDTO] {
        try await networkClient.request(
            endpoint: "movies",
            method: .get
        )
    }
}
