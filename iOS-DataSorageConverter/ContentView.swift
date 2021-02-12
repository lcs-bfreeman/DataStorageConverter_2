//
//  ContentView.swift
//  iOS-DataSorageConverter
//
//  Created by Ben Freeman on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: store properties
    @State private var input: String = ""
    
//MARK:  Computed properties
    private var output: String {
        return "You typed in \(input)"
    }
    
    
var body: some View {
    
    Form {
        
        TextField("e.g: 1024", text: $input)
            .keyboardType(.numberPad)
    
            Text(output)
    }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

