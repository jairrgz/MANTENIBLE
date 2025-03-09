//
//  AppContainer.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//

import Foundation

final class AppContainer {
    static let shared = AppContainer()
    
    private let networkClient: NetworkClientProtocol
    
    init() {
        self.networkClient = NetworkClient()
    }
    
    @MainActor func makeMovieListView(useMock: Bool = false) -> MovieListView {
        let dataSource: MovieDataSourceProtocol = useMock
            ? MockMovieDataSource()
            : RemoteMovieDataSource(networkClient: networkClient)
            
        let repository = MovieRepository(dataSource: dataSource)
        let useCase = FetchMoviesUseCase(repository: repository)
        let viewModel = MovieListViewModel(useCase: useCase)
        
        return MovieListView(viewModel: viewModel)
    }
}
