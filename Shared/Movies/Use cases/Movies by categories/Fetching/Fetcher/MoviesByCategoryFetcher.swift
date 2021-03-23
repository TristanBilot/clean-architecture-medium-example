//
//  MoviesByCategoryFetcher.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

class MoviesByCategoryFetcher: MoviesByCategoryFetching {
  private let moviesGateway: MoviesGateway
  private let presenter: MoviesByCategoryPresentable
  private let errorPresenter: MoviesByCategoryErrorPresentable
  
  init(
    moviesGateway: MoviesGateway,
    presenter: MoviesByCategoryPresentable,
    errorPresenter: MoviesByCategoryErrorPresentable
  ) {
    self.moviesGateway = moviesGateway
    self.presenter = presenter
    self.errorPresenter = errorPresenter
  }
  
  func fetch(category: Category) {
    moviesGateway.fetchMoviesByCategory(category) { (result) in
      switch result {
      case .success(let movies):
        self.presenter.present(movies: movies, forCategory: category)
      case .failure(let error):
        self.errorPresenter.present(error: error.localizedDescription)
      }
    }
  }
}
