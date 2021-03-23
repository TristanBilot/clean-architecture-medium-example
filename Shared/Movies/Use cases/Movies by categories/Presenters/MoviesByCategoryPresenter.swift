//
//  MoviesByCategoryPresenter.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

protocol MoviesByCategoryPresentable {
  func present(movies: [Movie], forCategory category: Category)
}

class MoviesByCategoryPresenter: MoviesByCategoryPresentable {
  private weak var view: MoviesByCategoryViewDelegate!
  
  init(
    view: MoviesByCategoryViewDelegate
  ) {
    self.view = view
  }
  
  func present(movies: [Movie], forCategory category: Category) {
    
  }
}
