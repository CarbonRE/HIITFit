//
//  SuccessView.swift
//  HIITFit
//
//  Created by Vera Remn on 28/08/2023.
//

import SwiftUI

struct SuccessView: View {

    @Environment(\.dismiss) var dismiss
    @Binding var selectedTab: Int

    var body: some View {

        ZStack {

            VStack {

                Image(systemName: "hand.raised.fill")
                    .customResizing(width: 75, height: 75)
                    .foregroundColor(.purple)
                    .padding()

                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Group {
                    Text("Good job completing all four exercises!")
                    Text("Remember tomorrow's another day.")
                    Text("So eat well and get some rest")
                }
                    .foregroundColor(.gray)

            }

            VStack {

                Spacer()
                Button("Continue") {
                    selectedTab = 9
                    dismiss()
                }
                    .padding(.bottom)

            }

        }

    }

}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(selectedTab: .constant(3))
    }
}
