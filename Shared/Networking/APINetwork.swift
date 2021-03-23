//
//  APINetwork.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

protocol APINetwork {
  func execute<T>(request: APIRequest, completion: @escaping (Result<T, Error>) -> Void)
}
