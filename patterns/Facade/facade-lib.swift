//
//  facade-lib.swift
//  patterns
//
//  Created by Rom Dr on 11.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

class Pathfinder {
    func findCurrentLocation() {
        print("Ищем местоположение... О! Вот ты где!")
    }
    
    func findLocationToTravel(location: String) {
        print("Итак, ты хочешь переместиться в \(location)")
    }
    
}

class TravelEngene {
    func findTransport() {
        print("Для путешествия нужны ездовые собаки")
    }
    
    func orderTransport() {
        print("Дайте вот тех, которые в упряжке...")
    }
    func travel() {
        print("Ю-ху! В путь!")
    }
}

class TicketPrintingSystem {
    func createTicket() {
        print("Ожидание ответа от базы...")
    }
    
    func printTicket() {
        print("Ответ получен! На собаках? Не забудь покормить их...")
    }
}
