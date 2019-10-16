//
//  CircleImage.swift
//  AppleLandmarks
//
//  Created by Quentin Genevois on 16/10/2019.
//  Copyright © 2019 Quentin Genevois. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white,
                            lineWidth: 4)
                    .shadow(radius: 10)
        )
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
