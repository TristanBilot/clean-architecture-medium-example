//
//  MoviesGatewayFactory.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

class MoviesGatewayFactory {
  func make() -> MoviesGateway {
    let network = MoviesAPINetworkMock()
    let repo = MoviesByCategoryRepositoryFetcher(network: network)
    return MoviesGateway(moviesByCategoryRepo: repo)
  }
}
