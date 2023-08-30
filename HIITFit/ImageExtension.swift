//
//  ImageExtension.swift
//  HIITFit
//
//  Created by Vera Remn on 28/08/2023.
//

import Foundation
import SwiftUI

extension Image {

    func customResizing(width: CGFloat, height: CGFloat) -> some View {

        return self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)

    }

}
