//
//  MockFetchMoviesUseCase.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import Foundation
@testable import MANTENIBLE

final class MockFetchMoviesUseCase: FetchMoviesUseCaseProtocol {
    private let shouldFail: Bool
    
    init(shouldFail: Bool = false) {
        self.shouldFail = shouldFail
    }
    
    func execute() async throws -> [Movie] {
        if shouldFail {
            throw NetworkError.serverError(500)
        }
        
        return [
            Movie(
                id: 1,
                title: "Test Movie 1",
                overview: "Test Overview 1",
                posterPath: "/test1.jpg",
                releaseDate: Date()
            ),
            Movie(
                id: 2,
                title: "Test Movie 2",
                overview: "Test Overview 2",
                posterPath: "/test2.jpg",
                releaseDate: Date()
            )
        ]
    }
}
