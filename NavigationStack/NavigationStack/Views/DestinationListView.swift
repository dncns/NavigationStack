//
//  DestinationListView.swift
//  NavigationStack
//
//  Created by Duncan Kent on 09/06/2022.
//

import SwiftUI

struct DestinationListView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
            List {
                ForEach(DestinationModel.mockDestinations) { destination in
                    NavigationLink(value: destination) {
                        VStack (alignment: .leading, spacing: 10) {
                            Text(destination.location)
                                .font(.headline)
                            Text("\(destination.pricePerPerson, format: .currency(code: "USD"))")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationDestination(for: DestinationModel.self) { destination in
                DestinationDetailView(destination: destination)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    router.navPath.append(DestinationModel.mockDestinations.randomElement()!)
                    
                    router.nextRoute = .info
                }
            }
            .navigationTitle("Destination List View")
    }
}

struct DestinationListView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationListView()
            .environmentObject(Router())
    }
}
