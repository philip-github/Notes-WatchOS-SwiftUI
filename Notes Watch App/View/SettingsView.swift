//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Philip Al-Twal on 10/24/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    //MARK: - FUNCTION
    
    func update(){
        lineCount = Int(value)
    }
    
    //MARK: - BODY
    
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            
            // NUMBER OF LINES
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
           
            // SLIDER
            Slider(value: Binding(get: {
                self.value
            }, set: { newValue, transaction in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1, onEditingChanged: { value in
                //
            })
        }//: VSTACK
    }//: BODY
}

//MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
