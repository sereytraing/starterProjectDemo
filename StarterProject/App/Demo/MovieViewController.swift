//
//  MovieViewController.swift
//  StarterProject
//
//  Created by TRAING Serey on 26/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import UIKit

class MovieViewController: BaseViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    private let viewModel = MovieViewModel(domain: DomainManager.movieDomain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.delegate = self
    }
}

extension MovieViewController: MovieViewControllerDelegate {
    func setAllText(title: String, overview: String) {
        DispatchQueue.main.async {
            self.titleLabel.text = title
            self.overviewLabel.text = overview
        }   
    }
}
