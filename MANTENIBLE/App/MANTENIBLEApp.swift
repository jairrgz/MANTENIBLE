//
//  MANTENIBLEApp.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import SwiftUI

@main
struct MovieApp: App {
    var body: some Scene {
        WindowGroup {
            AppContainer.shared.makeMovieListView(useMock: false)
            
        }
    }
}

