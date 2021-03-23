//
//  MoviesAPINetworkMock.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

/* This class is a mock used as an example, it should be replaced with real API callsx */
class MoviesAPINetworkMock: APINetwork {
  func execute<T>(request: APIRequest, completion: @escaping (Result<T, Error>) -> Void) {
    let mock = Movie(category: .horror, name: "Evil dead", date: 1983)
    completion(.success(mock as! T))
  }
}
