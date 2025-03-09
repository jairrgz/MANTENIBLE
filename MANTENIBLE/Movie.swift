//
//  Movie.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//


import Foundation

struct Movie: Identifiable {
    let id: Int
    let title: String
    let overview: String
    let posterPath: String
    let releaseDate: Date
}
