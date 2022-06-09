//
//  NavigationStackApp.swift
//  NavigationStack
//
//  Created by Duncan Kent on 09/06/2022.
//

import SwiftUI

@main
struct NavigationStackApp: App {
    
    @StateObject private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                DestinationListView()
                    .navigationBarTitleDisplayMode(.inline)
            }
            .environmentObject(router)
        }
    }
}
