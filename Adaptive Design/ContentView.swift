//
//  ContentView.swift
//  Adaptive Design
//
//  Created by Adit on 05/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

