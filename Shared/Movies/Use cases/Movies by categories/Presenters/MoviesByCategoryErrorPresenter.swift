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
  private weak var view: MoviesByCategoryViewDelegate!
  
  init(
    view: MoviesByCategoryViewDelegate
  ) {
    self.view = view
  }
  
  func present(error: String) {
    
  }
}
