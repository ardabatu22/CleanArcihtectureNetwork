//
//  NewsRemoteDataSource.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 18.09.2025.
//

import Foundation

struct NewsRemoteDataSource {
    private let network: NetworkManaging
    
    init(network:NetworkManaging) {
        self.network = network
    }
    
    func fetchTopHeadlines(country: String) async throws -> [Article] {
        let endpoint = TopHeadlinesEndpoint(country: country)
        let response: NewsResponse = try await network.fetch(from: endpoint)
        return response.articles
    }
}
