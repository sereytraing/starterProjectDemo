//
//  MovieNetwork.swift
//  StarterProject
//
//  Created by TRAING Serey on 26/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import Foundation

class MovieNetwork: NetworkManager {
    
    static let movieAPIKey = "f6354195e4c12ec78e4621cd93b49f7e"
    private let router = Router<MovieApi>()
    
    func getNewMovies(page: Int,
                      forceRefreshCache: Bool,
                      completion: @escaping (_ movie: [Movie]?, _ error: String?) -> ()) {
        router.request(.newMovies(page: page), forceRefreshCache: forceRefreshCache) { data, response, error in
            
            if error != nil {
                completion(nil, "Please check your network connection.")
            }
            
            if let response = response as? HTTPURLResponse {
                let result = self.handleNetworkResponse(response)
                switch result {
                case .success:
                    guard let responseData = data else {
                        completion(nil, NetworkResponse.noData.rawValue)
                        return
                    }
                    do {
                        let apiResponse = try JSONDecoder().decode(MovieApiResponse.self, from: responseData)
                        completion(apiResponse.movies,nil)
                    } catch {
                        print(error)
                        completion(nil, NetworkResponse.unableToDecode.rawValue)
                    }
                case .failure(let networkFailureError):
                    completion(nil, networkFailureError)
                }
            }
        }
    }
}
