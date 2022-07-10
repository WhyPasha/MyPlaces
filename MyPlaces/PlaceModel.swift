//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Павел on 08.07.2022.
//

import Foundation
struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    static   let restaurantNames = [
        "Burger Heroes", "Kitchen",  "Bonsai",  "Дастархан",
        "Индокитай", "X.O"
    ]
    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in restaurantNames {
            places.append(Place(name: place, location: "Санкт-Петербург", type: "Рестроран", image: place))
        }
        return places
    }
}
