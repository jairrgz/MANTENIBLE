//
//  Untitled.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import SwiftUI

@MainActor
protocol MovieListViewModelProtocol: ObservableObject {
    var state: EnumStateOfMovie { get }
    func loadMovies() async
}
