//
//  ViewController.swift
//  StarterProject
//
//  Created by TRAING Serey on 07/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var networkManager = NetworkManager()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        self.networkManager.getNewMovies(page: 1, forceRefreshCache: false) { (movies, error) in
            if let error = error {
                print(error)
            }
            
            if let movies = movies {
                print(movies)
                
            }
        }
        
    }
}

