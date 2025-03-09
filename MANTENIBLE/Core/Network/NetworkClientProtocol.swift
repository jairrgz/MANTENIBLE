//
//  NetworkClientProtocol.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import Foundation

protocol NetworkClientProtocol {
    func request<T: Decodable>(endpoint: String, method: HTTPMethod) async throws -> T
}
