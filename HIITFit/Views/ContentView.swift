//
//  ContentView.swift
//  HIITFit
//
//  Created by Vera Remn on 24/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            WelcomeView()
            ForEach(0 ..< 4) { number in
                ExerciseView(index: number)
            }
        }
        .indexViewStyle(
            PageIndexViewStyle(backgroundDisplayMode: .always))
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
