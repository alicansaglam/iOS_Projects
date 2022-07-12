//
//  DegreeCalcV2App.swift
//  DegreeCalcV2
//
//  Created by Ali Can Saglam on 11.07.2022.
//

import SwiftUI

@main
struct DegreeCalcV2App: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem{
                        HStack{
                            Image(systemName: "thermometer")
                            Text("conversion")
                        }
                    }
                
                MapView()
                    .tabItem{
                        HStack{
                            Image(systemName: "map")
                            Text("Map")
                        }
                    }
            }.accentColor(.green)
           
        }
    }
}
