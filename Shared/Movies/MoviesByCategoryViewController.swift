//
//  MoviesByCategoryViewController.swift
//  Shared
//
//  Created by BILOT Tristan on 23/03/2021.
//

import UIKit

class MoviesByCategoryViewController: UIViewController {
  private var didSelectCategoryController: DidSelectCategoryController!
  
  func initDependencies(
    didSelectCategoryController: DidSelectCategoryController
  ) {
    self.didSelectCategoryController = didSelectCategoryController
  }
}

extension MoviesByCategoryViewController: MoviesByCategoryViewDelegate {
  func showMoviesByCategory(movies: [Movie], forCategory category: Category) {
    <#code#>
  }
}

extension MoviesByCategoryViewController: MoviesByCategoryErrorViewDelegate {
  func showMoviesByCategoryError(error: String) {
    
  }
}
