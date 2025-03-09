//
//  MovieRepositoryProtocol.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import Foundation

protocol MovieRepositoryProtocol {
    func fetchMovies() async throws -> [Movie]
}
