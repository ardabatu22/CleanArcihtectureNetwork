//
//  Article.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 18.09.2025.
//

import Foundation

struct Article: Identifiable, Codable {
    let id: UUID = UUID()   // JSON’dan beklenmez, biz veririz
    let title: String
    let description: String?
    let urlToImage: String?
    let url: String
    let publishedAt: Date

    enum CodingKeys: String, CodingKey {
        case title, description, urlToImage, url, publishedAt
    }
}
