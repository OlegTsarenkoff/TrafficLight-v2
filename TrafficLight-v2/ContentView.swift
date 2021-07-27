//
//  ContentView.swift
//  TrafficLight-v2
//
//  Created by Oleg Tsarenkoff on 27.07.21.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "Start"
    @State private var currentLight = CurrentLight.yellow
    
    private func nextColor() {
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            BackgroundApp()
            VStack {
                VStack {
                    TrafficCircle(colorLight: .red, opacityLight: currentLight == .red ? 1 : 0.1)
                    TrafficCircle(colorLight: .yellow, opacityLight: currentLight == .yellow ? 1 : 0.1)
                        .padding()
                    TrafficCircle(colorLight: .green, opacityLight: currentLight == .green ? 1 : 0.1)
                }
                Spacer()
                ChangeTrafficLight(title: buttonTitle) {
                    self.buttonTitle = "Next"
                    self.nextColor()
                }
            }.padding()
        }
    }
}

