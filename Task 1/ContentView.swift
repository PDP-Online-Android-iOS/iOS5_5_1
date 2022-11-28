//
//  ContentView.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var half = false
    @State private var dim = false
    
    var body: some View {
        Image("image")
            .scaleEffect(half ? 0.5 : 1.0)
            .opacity(dim ? 0.2 : 1.0)
            .animation(.easeInOut(duration: 1.0))
            .onTapGesture {
                self.half.toggle()
                self.dim.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
