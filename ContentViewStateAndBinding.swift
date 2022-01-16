//
//  ContentView.swift
//  SwiftUI Tutorial: State and Binding
//
//  Created by Alvin Sosangyo on 01/14/22.
//


import SwiftUI

struct ContentView: View {
    
    @State private var counter1: Int = 0
    @State private var counter2: Int = 0
    @State private var counter3: Int = 0
    
    var body: some View {
            
        ZStack {
            
            VStack {
                
                Text("Passenger Counter")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .padding(.horizontal, 60)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(.blue)
                
                Text("Total")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 75)
                
                Text("\(counter1 + counter2 + counter3)")
                    .font(.system(size: 200))
                    .fontWeight(.black)
                
                HStack {
                                    
                    CounterView(counter: $counter1, text: "Bus 1", color: .orange)
                    CounterView(counter: $counter2, text: "Bus 2", color: .brown)
                    CounterView(counter: $counter3, text: "Bus 3", color: .mint)
                                    
                } //HStack
                
                Button(action: {
                    counter1 = 0
                    counter2 = 0
                    counter3 = 0
                }) {
                    Text("Reset")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(20)
                }
                
            } //VStack
            
        } //ZStack
        
    } //body
    
} //ContentView

struct CounterView: View {
    
    @Binding var counter: Int
    var text: String
    var color: Color
    
    var body: some View {
        VStack {
            
            Text(text)
                .font(.title)
                .fontWeight(.bold)
            
            Text("\(counter)")
                .font(.system(size: 50))
                .padding()
            
            Button(action: {
                self.counter += 1
            }) {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 100))
                    .foregroundColor(color )
            }
            
        } //VStack
        
    } //body
    
} //CounterView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


