//
//  DomainManager.swift
//  StarterProject
//
//  Created by TRAING Serey on 26/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import Foundation

struct DomainManager {
    
    //Demo
    static let movieDomain = MovieDomain(repository: MovieRepository(network: MovieNetwork()))
}
