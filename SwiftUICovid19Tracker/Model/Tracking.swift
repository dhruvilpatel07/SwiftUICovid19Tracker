//
//  Tracking.swift
//  SwiftUICovid19Tracker
//
//  Created by Dhruvil Patel on 2020-08-23.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import Foundation

struct Tracking: Decodable {
    let state: String
    let total: Int
    let positive: Int
    let death: Int
    let hospitalized: Int?
}
