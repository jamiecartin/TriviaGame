//
//  Extensions.swift
//  Trivia
//
//  Created by Jamie Cartin on 4/1/23.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
