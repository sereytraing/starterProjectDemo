//
//  EndPointType.swift
//  StarterProject
//
//  Created by TRAING Serey on 07/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
