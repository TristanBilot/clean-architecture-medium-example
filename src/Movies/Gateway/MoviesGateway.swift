//
//  MoviesGateway.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

class MoviesGateway {
  private let moviesByCategoryRepo: MoviesByCategoryRepository
  
  init(
    moviesByCategoryRepo: MoviesByCategoryRepository
  ) {
    self.moviesByCategoryRepo = moviesByCategoryRepo
  }
}

extension MoviesGateway: MoviesByCategoryRepository {
  func fetchMoviesByCategory(_ category: Category, completion: @escaping (Result<[Movie], Error>) -> Void) {
    moviesByCategoryRepo.fetchMoviesByCategory(category, completion: completion)
  }
}
