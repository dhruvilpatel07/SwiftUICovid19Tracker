//
//  TrackingListViewModel.swift
//  SwiftUICovid19Tracker
//
//  Created by Dhruvil Patel on 2020-08-23.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import Foundation

class TrackingListViewModel: ObservableObject {
    
   @Published var trackings = [TrackingViewModel]()
    
    func getTrackingData() {
           
           Webservice().getCovidTrackingResult { trackingList in
               if let trackingList = trackingList {
                DispatchQueue.main.async {
                    self.trackings = trackingList.map(TrackingViewModel.init)
                }
               }
               
           }
           
       }
}
