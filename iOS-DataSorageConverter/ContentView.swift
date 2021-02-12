//
//  ContentView.swift
//  iOS-DataSorageConverter
//
//  Created by Ben Freeman on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    
    @State private var feeling: String = ""
    
    
    private var greeting: String {
        return "Hello, \(name), you are \(feeling)"
    }

var body: some View {
    
    Form {
        
        TextField("Enter your name", text: $name)
        // In a picker it displays the Text and stores the .tag
        Picker("Mood", selection: $feeling) {
            Text("😀").tag("Happy")
            Text("😞").tag("Sad")
            Text("😐").tag("Fine")
        }
        .pickerStyle(SegmentedPickerStyle())
        
        Text(greeting)
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
