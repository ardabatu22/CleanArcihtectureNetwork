//
//  NewsViewModel.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 19.09.2025.
//

import Foundation

@MainActor
final class NewsViewModel: ObservableObject {
    @Published private(set) var articles: [Article] = []
    @Published var state: LoadingState = .idle
    
    private let fetchTopHeadlinesUseCase: FetchTopHeadlinesUseCase
    
    init(resolver: Resolver =  AppResolver.shared) {
        self.fetchTopHeadlinesUseCase = resolver.resolve()
    }
    
    func loadNews() async {
        state = .loading
        do {
            articles = try await fetchTopHeadlinesUseCase.execute(country: "us")
            state = .success
        } catch {
            state = .failure(error.localizedDescription)
        }
    }
}

enum LoadingState {
    case idle, loading, success, failure(String)
}
