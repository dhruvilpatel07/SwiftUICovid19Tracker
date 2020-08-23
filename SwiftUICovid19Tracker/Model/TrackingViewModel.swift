//
//  TrackingViewModel.swift
//  SwiftUICovid19Tracker
//
//  Created by Dhruvil Patel on 2020-08-23.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import Foundation

class TrackingViewModel: Identifiable {
    
    var tracking: Tracking
    
    init(tracking: Tracking) {
        self.tracking = tracking
    }
    
    let id: UUID = UUID()
    
    var state: String {
        return self.tracking.state
    }
    
    var total: Int {
        return self.tracking.total
    }
    
    var positive: Int {
        return self.tracking.positive
    }
    
    var death: Int {
        return self.tracking.death
    }
    
    var hospitalized: Int {
        return self.tracking.hospitalized ?? 0
    }
   
}

