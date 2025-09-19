//
//  NewsDetailView.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 18.09.2025.
//

import SwiftUI

struct NewsDetailView: View {
    let article: Article
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                if let imageUrl = article.urlToImage,
                   let url = URL(string: imageUrl) {
                    AsyncImage(url: url) { image in
                        image.resizable().scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                }
                
                Text(article.title)
                    .font(.title).bold()
                
                if let desc = article.description {
                    Text(desc).font(.body)
                }
                
                Link("Haberi Aç", destination: URL(string: article.url)!)
                    .foregroundColor(.blue)
            }
            .padding()
        }
        .navigationTitle(AppStrings.NewsDetail.title)
    }
}


#Preview {
    NewsDetailView(article: Article(title: "", description: "", urlToImage: "", url: "", publishedAt: Date()))
}
