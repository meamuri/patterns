//
//  facade-interface.swift
//  patterns
//
//  Created by Rom Dr on 17.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

class TravelSystemFacade {
    func travelTo(aLocation: String) {
        
        let pf = Pathfinder()
        let te = TravelEngene()
        let tp = TicketPrintingSystem()
        
        pf.findCurrentLocation()
        pf.findLocationToTravel(location: aLocation)
        
        te.findTransport()
        te.orderTransport()
        tp.createTicket()
        tp.printTicket()
        te.travel()
    }
}
