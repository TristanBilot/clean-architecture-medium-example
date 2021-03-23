//
//  APIRequest.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

protocol APIRequest {
  var path: String { get }
  var headers: [String: String]? { get }
  var method: Method { get }
}
