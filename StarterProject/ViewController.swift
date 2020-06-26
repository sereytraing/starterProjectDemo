//
//  ViewController.swift
//  StarterProject
//
//  Created by TRAING Serey on 07/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(identifier: "MovieViewController") as? MovieViewController {
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
}

