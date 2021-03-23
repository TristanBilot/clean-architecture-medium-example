//
//  MoviesByCategoryViewDelegate.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

protocol MoviesByCategoryViewDelegate: class {
  func showMoviesByCategory(movies: [Movie], forCategory category: Category)
}
