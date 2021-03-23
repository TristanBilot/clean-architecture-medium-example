//
//  DidSelectCategoryController.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

class DidSelectCategoryController: DidSelectCategoryControllable {
  private let fetcher: MoviesByCategoryFetching
  
  init(
    fetcher: MoviesByCategoryFetching
  ) {
    self.fetcher = fetcher
  }
  
  func didSelect(category: Category) {
    fetcher.fetch(category: category)
  }
}
