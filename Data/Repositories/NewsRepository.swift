//
//  NewsRepository.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 18.09.2025.
//

import Foundation

protocol NewsRepository {
    func fetchTopHeadlines(country: String) async throws -> [Article]
}

final class NewsRepositoryImpl: NewsRepository {
    private let remoteDataSource: NewsRemoteDataSource
    
    init(remoteDataSource: NewsRemoteDataSource) {
        self.remoteDataSource = remoteDataSource
    }
    
    func fetchTopHeadlines(country: String) async throws -> [Article] {
        try await remoteDataSource.fetchTopHeadlines(country: country)
    }
}
