//
//  ParameterEncoding.swift
//  StarterProject
//
//  Created by TRAING Serey on 07/06/2020.
//  Copyright © 2020 Sereypich TRAING. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

public protocol ParameterEncoder {
    
    //The encode method takes two parameters an inout URLRequest and Parameters. (To avoid ambiguity from henceforth I will refer to function parameters as arguments.) INOUT is a Swift keyword that defines an argument as a reference argument. Usually, variables are passed to functions as value types. By placing inout in front of the argument we define it as a reference type. The ParameterEncoder protocol will be implemented by our JSONParameterEncoder and URLPameterEncoder.
    
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws

}

public enum NetworkError: String, Error {
    case parametersNil = "Parameters were nil. ❌"
    case encodingFailed = "Paramter encoding failed. ❌"
    case missingURL = "URL is nil. ❌"
}
