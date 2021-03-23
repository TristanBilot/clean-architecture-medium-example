//
//  MoviesByCategoryRepositoryFetcher.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

protocol MoviesByCategoryRepository {
  func fetchMoviesByCategory(_ category: Category, completion: @escaping (Result<[Movie], Error>) -> Void)
}

class MoviesByCategoryRepositoryFetcher: MoviesByCategoryRepository {
  private let network: APINetwork
  
  init(
    network: APINetwork
  ) {
    self.network = network
  }
  
  func fetchMoviesByCategory(_ category: Category, completion: @escaping (Result<[Movie], Error>) -> Void) {
    let request = MoviesAPIRequestMock()
    network.execute(request: request, completion: completion)
  }
}
