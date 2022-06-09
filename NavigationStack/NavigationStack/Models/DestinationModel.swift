//
//  DestinationModel.swift
//  NavigationStack
//
//  Created by Duncan Kent on 09/06/2022.
//

import Foundation

struct DestinationModel: Hashable, Identifiable {
    let id = UUID()
    let location: String
    let pricePerPerson: Double
    let description: String
    
    static let mockDestinations: [DestinationModel] = [
        DestinationModel(location: "Austria, Europe",
                         pricePerPerson: 234.00,
                         description: "Beautiful countryside with a vast culture to explore in the capital."),
        
        DestinationModel(location: "Antigua, Caribbean",
                         pricePerPerson: 1001.00,
                         description: "A tropical escape to a peaceful island with secluded beaches and coves."),
        
        DestinationModel(location: "Morocco, Africa",
                         pricePerPerson: 258.00,
                         description: "Plentiful sandy beaches and close to the Atlas Mountains."),
        
        DestinationModel(location: "Costa Rica, Central America",
                         pricePerPerson: 769.00,
                         description: "Embrace the host of wildlife to be found, with national parks and nature reserves galore."),
        
        DestinationModel(location: "Sri Lanka, Asia",
                         pricePerPerson: 975.00,
                         description: "Explore Sri Lanka's history and relax on the sandy beaches.")
    ]
}
