//
//  Router.swift
//  NavigationStack
//
//  Created by Duncan Kent on 09/06/2022.
//

import Foundation
import SwiftUI

final class Router: ObservableObject {
    
    enum Router {
        case info
        case booking
        
        @ViewBuilder
        var view: some View {
            switch self {
            case .info:
                DestinationInfoView()
            case .booking:
                DestinationBookingView()
            }
        }
    }
    
    @Published var navPath: NavigationPath = .init()
    @Published var showSheet = false
    
    var nextRoute: Router = .booking
    
}
