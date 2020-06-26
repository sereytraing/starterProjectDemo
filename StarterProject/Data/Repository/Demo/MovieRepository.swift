//
//  MovieRepository.swift
//  StarterProject
//
//  Created by TRAING Serey on 26/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import Foundation

class MovieRepository {
    let network: MovieNetwork
    
    init(network: MovieNetwork) {
        self.network = network
    }
    
    func getNewMovies(forceRefresh: Bool, completionSuccess: @escaping ([Movie]) -> Void, completionError: @escaping (String) -> Void) {
        self.network.getNewMovies(page: 1, forceRefreshCache: forceRefresh) { (movies, error) in
            if let error = error {
                completionError(error)
            }
            
            if let movies = movies {
                completionSuccess(movies)
            }
        }
    }
}
