//
//  UserData.swift
//  AppleLandmarks
//
//  Created by Quentin Genevois on 18/10/2019.
//  Copyright © 2019 Quentin Genevois. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFaroviteOnly = false
    @Published var landmarks = landmarkData
}
