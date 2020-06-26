//
//  MovieViewModel.swift
//  StarterProject
//
//  Created by TRAING Serey on 26/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import Foundation

protocol MovieViewControllerDelegate: class {
    func setAllText(title: String, overview: String)
}

class MovieViewModel {
    
    let domain: MovieDomain
    var movie: Movie? = nil
    weak var delegate: MovieViewControllerDelegate?
    
    init(domain: MovieDomain) {
        self.domain = domain
        self.getNewMovies()
    }
    
    func getNewMovies() {
        self.domain.getNewMovies(
            forceRefresh: true,
            completionSuccess: { [weak self] movies in
                guard let self = self else { return }
                if let movie = movies.first {
                    self.movie = movie
                    self.delegate?.setAllText(title: movie.title ?? "", overview: movie.overview ?? "")
                }
        },
            completionError: { e in
            print(e)
        })
    }
}
