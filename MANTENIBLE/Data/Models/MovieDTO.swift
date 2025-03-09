//
//  MovieDTO.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import Foundation

struct MovieDTO: Codable {
    let id: Int
    let title: String
    let overview: String
    let poster_path: String
    let release_date: String
}
