//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Vanichjakvong, Jakpat (IRG) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var test = false
    
    var body: some View {
        VStack {
            Form {
                Text("Tamagotchi")
                    .padding()
                
                Section {
                    Button("Ouais", action: {})
                    Toggle("Thank the bus driver", isOn: $test)
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
