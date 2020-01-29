//
//  LandmarkDetail.swift
//  AppleLandmarks
//
//  Created by Quentin Genevois on 16/10/2019.
//  Copyright © 2019 Quentin Genevois. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark

    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)


                        Button(action: {
                            self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                        }) {
                            if self.userData.landmarks[self.landmarkIndex].isFavorite {
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.yellow)
                            } else {
                                Image(systemName: "star")
                                    .foregroundColor(Color.gray)
                            }
                        }
                    }

                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                }
                .padding()

                Spacer()
            }
        }
        .navigationBarTitle(Text(landmark.name),
                            displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
