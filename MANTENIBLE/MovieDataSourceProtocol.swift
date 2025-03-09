//
//  MovieDataSourceProtocol.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//
import Foundation

protocol MovieDataSourceProtocol {
    func fetchMovies() async throws -> [MovieDTO]
}
