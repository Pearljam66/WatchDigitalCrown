//
//  ContentView.swift
//  WatchDigitalCrown Watch App
//
//  Created by Sarah Clark on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var number = 0.0

    var body: some View {
            Text("\(number, specifier: "%.1f")")
            .onChange(of: number) { newValue, _ in
                print(newValue)
            }
            .focusable()
            .digitalCrownRotation (
                $number,
                from: 0.0,
                through: 12.0,
                by: 0.1,
                sensitivity: .low,
                isContinuous: true,
            isHapticFeedbackEnabled: true)
    }
}

#Preview {
    ContentView()
}
