//
//  TopHeadlinesEndpoint.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 18.09.2025.
//

import Foundation

struct TopHeadlinesEndpoint: Endpoint {
    var country: String
    
    var baseURL: URL { URL(string: "https://newsapi.org/v2")! }
    var path: String { "/top-headlines" }
    var method: HTTPMethod { .get }
    var headers: [String : String]? {
        [
            "Content-Type": "application/json",
            "X-Api-Key": Secrets.newsApiKey
        ]
    }
    var parameters: [String : Any]? { ["country": country] }
}
