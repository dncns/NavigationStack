//
//  DestinationDetailView.swift
//  NavigationStack
//
//  Created by Duncan Kent on 09/06/2022.
//

import SwiftUI

struct DestinationDetailView: View {
    
    @EnvironmentObject var router: Router
    
    let destination: DestinationModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text(destination.location)
                .font(.title)
            Text(destination.description)
                .font(.body)
            VStack {
                Text("Price per Person")
                Text("\(destination.pricePerPerson, format: .currency(code: "USD"))")
                    .bold()
            }
            
            VStack(spacing: 20) {
                Button("Info") {
                    router.nextRoute = .info
                    router.showSheet.toggle()
                }
                
                Button("Book") {
                    router.nextRoute = .booking
                    router.showSheet.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        .sheet(isPresented: $router.showSheet, content: {
            router.nextRoute.view
        })
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                router.showSheet.toggle()
            }
        }
    }
}

struct DestinationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationDetailView(destination: DestinationModel.mockDestinations.first!)
            .environmentObject(Router())
    }
}
