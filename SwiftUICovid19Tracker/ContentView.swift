//
//  ContentView.swift
//  SwiftUICovid19Tracker
//
//  Created by Dhruvil Patel on 2020-08-23.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var trackingListVM = TrackingListViewModel()
    
    init() {
        self.trackingListVM.getTrackingData()
    }
    
    var body: some View {
        NavigationView{
            List(self.trackingListVM.trackings){ tracking in
                HStack {
                    Text(tracking.state)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .clipShape(Circle())
                        .font(.custom("", size: 22))
                   // Spacer()
                    
                    VStack(alignment: .leading){
                        Text("\(tracking.total)").font(.largeTitle)
                        //TO-DO Implement HStack
                        HStack{
                            Image(systemName: "plus").imageScale(.small)
                        }
                    }
                    .padding(.leading, 50.0)

                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
