//
//  ContentView.swift
//  DegreeCalcV2
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
            return "???"
        }
       
    }
    
    
    var body: some View {
        
    
        VStack{
            Spacer()
            
            Image(systemName:  "thermometer.sun")
                .foregroundColor(.green)
                .font(.system(size: 50))
            
            Text("F° to C° Converter App").fontWeight(.bold)
                .foregroundColor(.orange).font(.title)
           
            
            Spacer()
            
            TextField("Tap to Enter F° Value?", text: $fahValue)
                .keyboardType(.decimalPad)
                .foregroundColor(.orange)
                .multilineTextAlignment(.center)
                .font(Font.system(size: 30, weight: .heavy, design: .default))
                .border(.gray, width: 1)
                
            
            Text("F° is equals to")
            Text(" \(ConverToCelcius()) C°")
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
                .font(Font.system(size: 40, weight: .heavy, design: .default))
            
            
            Spacer()
            
            Text("2022 | Ali Can Saglam")
                .font(.system(size: 12))
                .fontWeight(.bold)
            
        }.font(.title2)
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
