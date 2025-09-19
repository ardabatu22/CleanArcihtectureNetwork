//
//  NewsListView.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 19.09.2025.
//

import SwiftUI

struct NewsListView: View {
    @StateObject private var viewModel = NewsViewModel()

    var body: some View {
        NavigationView {
            Group {
                switch viewModel.state {
                case .idle, .loading:
                    ProgressView("Yükleniyor...")
                case .failure(let error):
                    Text(error).foregroundColor(.red)
                case .success:
                    List(viewModel.articles) { article in
                        NavigationLink(destination: NewsDetailView(article: article)) {
                            VStack(alignment: .leading) {
                                Text(article.title).font(.headline)
                                Text(article.publishedAt, style: .date)
                                    .font(.caption).foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle(AppStrings.NewsList.title)
            .task {
                await viewModel.loadNews()
            }
        }
    }
}


#Preview {
    NewsListView()
}
