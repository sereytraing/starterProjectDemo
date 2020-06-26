//
//  MovieDomain.swift
//  StarterProject
//
//  Created by TRAING Serey on 26/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import Foundation

class MovieDomain {
    let repository: MovieRepository
    
    init(repository: MovieRepository) {
        self.repository = repository
    }
    
    func getNewMovies(forceRefresh: Bool, completionSuccess: @escaping ([Movie]) -> Void, completionError: @escaping (String) -> Void) {
        self.repository.getNewMovies(forceRefresh: forceRefresh, completionSuccess: { movies in
            completionSuccess(movies)
        }, completionError: { e in
            completionError(e)
        })
    }
}
