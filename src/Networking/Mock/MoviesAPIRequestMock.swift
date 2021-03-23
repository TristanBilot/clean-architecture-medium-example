//
//  MoviesAPIRequestMock.swift
//  clean-archi-example (iOS)
//
//  Created by BILOT Tristan on 23/03/2021.
//

struct MoviesAPIRequestMock: APIRequest {
  var path: String = "https://path-to-my-movies-endpoint"
  
  var headers: [String : String]? = [
    "some": "headers"
  ]
  
  var method: Method = .GET
}
