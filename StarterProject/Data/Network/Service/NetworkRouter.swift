//
//  NetworkRouter.swift
//  StarterProject
//
//  Created by TRAING Serey on 07/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> ()

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    
    func request(_ route: EndPoint, forceRefreshCache: Bool, completion: @escaping NetworkRouterCompletion)
    
    func cancel()
}
