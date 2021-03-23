//
//  MoviesByCategoryFactory.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

class MoviesByCategoryFactory {
  func make() -> MoviesByCategoryViewController {
    let view = MoviesByCategoryViewController()
    let gateway = MoviesGatewayFactory().make()
    let presenter = MoviesByCategoryPresenter(view: view)
    let errorPresenter = MoviesByCategoryErrorPresenter(view: view)
    let interactor = MoviesByCategoryFetcher(
      moviesGateway: gateway,
      presenter: presenter,
      errorPresenter: errorPresenter
    )
    let controller = DidSelectCategoryController(fetcher: interactor)
    view.initDependencies(didSelectCategoryController: controller)
    return view
  }
}
