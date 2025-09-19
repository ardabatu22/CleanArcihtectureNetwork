//
//  Injection.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 19.09.2025.
//

import Foundation

public struct DependencyInjection {
    public static func setup() {
        let resolver = AppResolver.shared
        registerNews(resolver: resolver)
    }
    private static func registerNews(resolver: Resolver) {
        let network = NetworkManager.shared
        let remote = NewsRemoteDataSource(network: network)
        let repo = NewsRepositoryImpl(remoteDataSource: remote)
        resolver.register(FetchTopHeadlinesUseCase.self, instance: FetchTopHeadlinesUseCaseImpl(repository: repo))
    }
}
       
