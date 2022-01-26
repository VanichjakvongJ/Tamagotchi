//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Vanichjakvong, Jakpat (IRG) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var test = false
    
    @State private var tamagotchi = Tamagotchi()
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    HStack {
                        VStack(alignment: .trailing) {
                            Text("Age: ")
                            Text("Weight: ")
                            Text("Discipline: ")
                            Text("Hunger: ")
                            Text("Happiness: ")
                            
                        }
                        VStack(alignment: .leading) {
                            Text("\(tamagotchi.age)")
                            Text("\(String(format: "%.1f", tamagotchi.weight)) kg")
                            Text("\(String(repeating: "|", count: tamagotchi.discipline)) ") //discipline
                            Text("\(String(repeating: "o ", count: tamagotchi.hunger)) ") //hunger
                            Text("\(String(repeating: "o ", count: tamagotchi.happiness)) ") //happiness
                        }
                    }
                }
                Section {
                    Button("Feed Meal", action: {tamagotchi.feedMeal()})
                    Button("Feed Snack", action: {tamagotchi.feedSnack()})
                    Button("Play", action: {tamagotchi.play()})
                    Button("Toggle Light", action: {})
                    Button("Give Medicine", action: {})
                    Button("Clean", action: {})
                    Button("Discipline", action: {tamagotchi.scold()})
                }
            }
            .navigationTitle("Tamagotchi")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
