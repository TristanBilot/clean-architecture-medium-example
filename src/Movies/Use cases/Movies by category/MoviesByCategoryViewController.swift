//
//  MoviesByCategoryViewController.swift
//  Shared
//
//  Created by BILOT Tristan on 23/03/2021.
//

import UIKit

class MoviesByCategoryViewController: UIViewController {
  private var didSelectCategoryController: DidSelectCategoryControllable!
  private var movies: [Movie]?
  private var selectedCategory: Category?
  
  func initDependencies(
    didSelectCategoryController: DidSelectCategoryControllable
  ) {
    self.didSelectCategoryController = didSelectCategoryController
  }
  
  @IBAction func onCategoryTapped(_ sender: CategoryButton!) {
    didSelectCategoryController.didSelect(category: sender.category)
  }
}

extension MoviesByCategoryViewController: MoviesByCategoryViewDelegate {
  func showMoviesByCategory(movies: [Movie], forCategory category: Category) {
    self.movies = movies
    self.selectedCategory = category
  }
}

extension MoviesByCategoryViewController: MoviesByCategoryErrorViewDelegate {
  func showMoviesByCategoryError(error: String) {
    /* handle error properly */
  }
}
