//
//  NetworkService.swift
//  RestaurantApp
//
//  Created by Aliaksandr Batyesheu on 6/20/20.
//  Copyright © 2020 Aliaksandr Batyesheu. All rights reserved.
//

import Foundation
import Moya

private let apiKey = "T-uuOZieY6uhglfNrBsfcRnv2S54-smhwcsm0Hpo3CowZrnIU_-45edXg5-phn-NWR_17kPP6pYCRSXlAU9Y6JidVSv8zf9FOYw3ErLFQbFaYGjEVYBbGDDH_SjvXnYx"

enum YelpService {
    enum BusinessesProvider: TargetType {
        case search(lat: Double, long: Double)
        case details(id: String)
        
        var baseURL: URL {
            return URL(string: "https://api.yelp.com/v3/businesses")!
        }

        var path: String {
            switch self {
            case .search:
                return "/search"
            case let .details(id):
                return "/\(id)"
            }
        }

        var method: Moya.Method {
            return .get
        }

        var sampleData: Data {
            return Data()
        }

        var task: Task {
            switch self {
            case let .search(lat, long):
                return .requestParameters(
                    parameters: ["latitude": lat, "longitude": long, "limit": 10], encoding: URLEncoding.queryString)
            case .details:
                return .requestPlain
            }
            
        }

        var headers: [String : String]? {
            return ["Authorization": "Bearer \(apiKey)"]
        }
    }
}
