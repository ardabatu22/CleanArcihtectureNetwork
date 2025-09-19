//
//  NetworkError.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 18.09.2025.
//

import Foundation

enum NetworkError: Error {
    case invalidResponse
    case decodingFailed
    case clientError(Int)
    case serverError(Int)
    case unknownError(Int)
}

extension NetworkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .invalidResponse:
            return "Sunucudan geçersiz yanıt alındı."
        case .decodingFailed:
            return "Yanıt verisi çözümlenemedi."
        case .clientError(let code):
            return "İstemci hatası: \(code) veya API keyi kontrol ediniz."
        case .serverError(let code):
            return "Sunucu hatası: \(code)"
        case .unknownError(let code):
            return "Bilinmeyen hata: \(code)"
        }
    }
}
