//
//  ContentView.swift
//  SwiftUI Tutorial: State and Binding
//
//  Created by Alvin Sosangyo on 01/14/22.
//


import SwiftUI

struct ContentView: View {
    
    @State var isPlaying: Bool = false
    
    var body: some View {
            
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                .font(.system(size: 200))
                .foregroundColor(isPlaying ? .red : .blue)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


