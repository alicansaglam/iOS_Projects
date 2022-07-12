//
//  MapView.swift
//  DegreeCalcV2
//
//  Created by Ali Can Saglam on 11.07.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    static var regions: [MKCoordinateRegion] = [MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 39.5, longitude: 26.5),
        span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)),
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 40.4, longitude:-4),
            span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5))]
    
    
    @State var region: MKCoordinateRegion = regions[0]
    @State var selectedIndex: Int = 0

    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.top)
            .overlay(
                VStack{
                    Picker("Picker", selection: $selectedIndex,
                           content: {
                               Text("Balıkesir").tag(0)
                               Text("Madrid").tag(1)
                               
                    }).pickerStyle(SegmentedPickerStyle())
                        .padding()
                        .onChange(of: selectedIndex, perform:{value in self.region = MapView.regions[selectedIndex]} )
                Spacer()
                }
               
            )
        

    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
