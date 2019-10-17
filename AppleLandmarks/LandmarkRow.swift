//
//  LandmarkRow.swift
//  AppleLandmarks
//
//  Created by Quentin Genevois on 17/10/2019.
//  Copyright © 2019 Quentin Genevois. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50,
                       height: 50)
            Text(landmark.name)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
