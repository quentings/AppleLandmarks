//
//  RotatedBadgeSymbol.swift
//  AppleLandmarks
//
//  Created by Quentin Genevois on 21/10/2019.
//  Copyright © 2019 Quentin Genevois. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle

    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RotatedBadgeSymbol(angle: .init(degrees: 5))
            RotatedBadgeSymbol(angle: .init(degrees: 10))
            RotatedBadgeSymbol(angle: .init(degrees: 15))
            RotatedBadgeSymbol(angle: .init(degrees: 20))
            RotatedBadgeSymbol(angle: .init(degrees: 25))
        }
    }
}
