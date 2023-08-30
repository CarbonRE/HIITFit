//
//  WelcomeView.swift
//  HIITFit
//
//  Created by Vera Remn on 24/08/2023.
//

import SwiftUI

struct WelcomeView: View {

    @Binding var selectedTab: Int
    @State private var showHistory = false

    var body: some View {

        ZStack {

            VStack {

                HeaderView(selectedTab: $selectedTab, titleText: "Welcome")
                Spacer()

                Button("History") {
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
                .padding(.bottom)

            }

            VStack {

                HStack(alignment: .bottom) {

                    VStack(alignment: .leading) {
                        Text("Get fit")
                            .font(.largeTitle)
                        Text("with high intensity interval training")
                            .font(.headline)
                    }

                    Image("step-up")
                        .customResizing(width: 150, height: 150)
                        .clipShape(Circle())

                }

                Button(action: { selectedTab = 0 }) {
                    Text("Get started")
                    Image(systemName: "arrow.right.circle")
                }
                    .font(.title2)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 2))

            }

        }

    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selectedTab: .constant(9))
    }
}
