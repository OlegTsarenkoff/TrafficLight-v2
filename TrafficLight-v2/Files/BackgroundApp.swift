//
//  BackgroundApp.swift
//  TrafficLight-v2
//
//  Created by Oleg Tsarenkoff on 27.07.21.
//

import SwiftUI

struct BackgroundApp: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.darkStart, Color.darkEnd]), startPoint: .bottomTrailing, endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundApp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundApp()
    }
}
