//
//  CategoryHome.swift
//  AppleLandmarks
//
//  Created by Quentin Genevois on 25/10/2019.
//  Copyright © 2019 Quentin Genevois. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var categories: [String : [Landmark]] {
        .init(grouping: landmarkData,
              by: { $0.category.rawValue })
    }


    var featured: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }

    @State var showingProfile = false
    @EnvironmentObject var userData: UserData

    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
        }
    }

    var body: some View {
        NavigationView {
            List {
                PageView(featured.map { FeatureCard(landmark: $0) })
                    .scaledToFill()
                    .clipped()
                    .listRowInsets(EdgeInsets())

                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(
                        categoryName: key,
                        items: self.categories[key]!
                    )
                }
                .listRowInsets(EdgeInsets())

                NavigationLink(destination: LandmarkList()) {
                    Text("See All")
                }
            }
            .navigationBarTitle("Featured")
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(self.userData)
            }
        }
    }
}

struct FeaturedLandmarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image.resizable()
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
