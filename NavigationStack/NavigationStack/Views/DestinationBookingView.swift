//
//  DestinationBookingView.swift
//  NavigationStack
//
//  Created by Duncan Kent on 09/06/2022.
//

import SwiftUI

struct DestinationBookingView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Book your destination here!")
                .padding(.horizontal)
            
            Button("Pop to root") {
                router.showSheet = false
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    router.navPath = .init()
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Booking View")
    }
}

struct DestinationBookingView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationBookingView()
            .environmentObject(Router())
    }
}
