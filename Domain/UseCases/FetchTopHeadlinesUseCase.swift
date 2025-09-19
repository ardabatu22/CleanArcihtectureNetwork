//
//  FetchTopHeadlinesUseCase.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 18.09.2025.
//

import Foundation
protocol FetchTopHeadlinesUseCase{
    func execute(country: String) async throws -> [Article] 

}

final class FetchTopHeadlinesUseCaseImpl:FetchTopHeadlinesUseCase {
    private let repository: NewsRepository
    
    init(repository: NewsRepository) {
        self.repository = repository
    }
    
    func execute(country: String) async throws -> [Article] {
        try await repository.fetchTopHeadlines(country: country)
    }
}
