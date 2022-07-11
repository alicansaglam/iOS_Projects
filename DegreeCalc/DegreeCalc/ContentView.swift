//
//  ContentView.swift
//  DegreeCalc
//
//  Created by Ali Can Saglam on 11.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var fahValue: String = ""
    
    let numberFormatter: NumberFormatter={
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits=1
        numberFormatter.maximumFractionDigits=2
        
        return numberFormatter
        
    }()
    
    func ConverToCelcius() -> String {
        
        if let value = Double(fahValue){
            
            let fahrenheit = Measurement<UnitTemperature>(value: value , unit: .fahrenheit)
            let celciusValue = fahrenheit.converted(to: .celsius)
            return numberFormatter.string(from: NSNumber(value: celciusValue.value)) ?? "???"
        }
        else{
            return "Awaiting..."
        }
       
    }
    
    
    var body: some View {
        
    
        VStack{
        
            TextField("Fah Value?", text: $fahValue)
                .keyboardType(.decimalPad)
                .foregroundColor(.orange)
                .multilineTextAlignment(.center)
                .font(Font.system(size: 64, weight: .heavy, design: .default))
            
            Text("fahrenheit degrees")
            Text("is equals to")
            Text(ConverToCelcius()).foregroundColor(.green).multilineTextAlignment(.center).font(Font.system(size: 64, weight: .heavy, design: .default))
            Text("Celcius Degrees")
            Spacer()
            Text("Program By Ali Can Saglam").font(.system(size: 12)).fontWeight(.bold)
        }.font(.title)
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
