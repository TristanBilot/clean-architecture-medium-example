//
//  MoviesByCategoryErrorPresenter.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

protocol MoviesByCategoryErrorPresentable {
  func present(error: String)
}

class MoviesByCategoryErrorPresenter: MoviesByCategoryErrorPresentable {
  private weak var view: MoviesByCategoryErrorViewDelegate!
  
  init(
    view: MoviesByCategoryErrorViewDelegate
  ) {
    self.view = view
  }
  
  func present(error: String) {
    view.showMoviesByCategoryError(error: error)
  }
}
