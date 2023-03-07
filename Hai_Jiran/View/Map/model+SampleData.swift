//
//  model+SampleData.swift
//  Hai_Jiran
//
//  Created by stdc user on 06/03/2023.
//

import Foundation

struct TeamMember: Identifiable, Hashable {
    var id = UUID()
    var photoName: String
    var name: String
    var description: String
    var phone: String
    var address: String
    var about: String
    var workType: String
}

let testData = [
    TeamMember(photoName: "toufix", name: "TouFix", description: "ex-Padawan Purple Saber", phone: "60125819575", address: "Singgora, SN", about: "Would like to greeting you all to come or stop-by at my house. Don't forget to bring any potluck that we can share-it, we sit, and we enjoy to last bit.",workType: "Mechanic"),
    
    TeamMember(photoName: "myimage", name: "Aliff Irfan", description: "Leader of capybara", phone: "60183608467", address: "Subang, MY", about: "We are normally feed in the morning and evening and spend most of the day resting under cover along the banks.",workType: "Technician"),
    
    TeamMember(photoName: "hariz", name: "Hariz", description: "🦆 Duckling 🦆", phone: "60117504345", address: "Seksyen 16, SA", about: "Duckling is a baby duck. We usually learn to swim by following our mother to a body of water.",workType: "Contractor"),
    
    TeamMember(photoName: "danish", name: "Danish", description: "Pejuang Rank (Lance)", phone: "60183818725", address: "New Delhi, IN", about: "Lasnce ;ah yang paling terhebat, semua boleh makan, Double-Kill! Triple Kil! Maniac! Savage!.",workType: "Drver"),
    
    TeamMember(photoName: "muaz", name: "Muaz", description: "CEO of Geragau", phone: "60183545796", address: "Xin Yiang, CH", about: "Tokey udang geragau nombor satu di Malaysia.",workType: "Driver"),
    
    
]

