//
//  ContentView.swift
//  HIITFit
//
//  Created by Vera Remn on 24/08/2023.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedTab = 9

    var body: some View {

        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab)
                .tag(9)
            ForEach(Exercise.exercises.indices, id: \.self) { number in
                ExerciseView(selectedTab: $selectedTab, index: number)
                    .tag(number)
            }
        }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
