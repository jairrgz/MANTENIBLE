//  MANTENIBLEApp.swift
//  MANTENIBLE
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 9/03/25.
//
import Testing
@testable import MANTENIBLE

@MainActor
@Suite("MovieListViewModel Tests")
struct MovieListViewModelTests {
    
    @Test("Loading movies should update state correctly")
    func testLoadMoviesSuccess() async throws {
        let mockUseCase = MockFetchMoviesUseCase()
        let viewModel = MovieListViewModel(useCase: mockUseCase)
        
        await viewModel.loadMovies()
        
        if case .loaded(let movies) = viewModel.state {
            #expect(movies.count == 2)
            #expect(movies[0].title == "Test Movie 1")
            #expect(movies[1].title == "Test Movie 2")
        } else {
    
            #expect(Bool(false), "Expected loaded state with movies")
        }
    }
    
    @Test("Loading movies should handle errors")
    func testLoadMoviesFailure() async throws {
        let mockUseCase = MockFetchMoviesUseCase(shouldFail: true)
        let viewModel = MovieListViewModel(useCase: mockUseCase)
        
        await viewModel.loadMovies()
        
        if case .error(let error) = viewModel.state {
            #expect(error as? NetworkError == .serverError(500))
        } else {
            #expect(Bool(false), "Expected error state")
        }
    }
    
}
