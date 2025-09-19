//
//  CleanArchNetworkApp.swift
//  CleanArchNetwork
//
//  Created by Batuhan Arda on 18.09.2025.
//

import SwiftUI

@main
struct CleanArchNetworkApp: App {
    init(){
        DependencyInjection.setup()
    }
    
    var body: some Scene {
        WindowGroup {
            NewsListView()
        }
    }
}
