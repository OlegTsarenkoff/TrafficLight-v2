//
//  TrafficCircle.swift
//  TrafficLight-v2
//
//  Created by Oleg Tsarenkoff on 27.07.21.
//

import SwiftUI

struct TrafficCircle: View {
    let colorLight: Color
    let opacityLight: Double
    
    var body: some View {
        Circle()
            .foregroundColor(colorLight)
            .opacity(opacityLight)
            .frame(width: 130, height: 130)
            .clipShape(Circle())
            .overlay(Circle()
                        .stroke(Color.gray, lineWidth: 4)
                        .blur(radius: 4)
                        .offset(x: 2, y: 2)
                        .mask(Circle()
                                .fill(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .bottomTrailing, endPoint: .topLeading))))
            .overlay(
                Circle()
                    .stroke(Color.gray, lineWidth: 8)
                    .blur(radius: 4)
                    .offset(x: -2, y: -2)
                    .mask(Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .topTrailing, endPoint: .bottomLeading))))
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            .animation(.easeIn)
        
        
    }
}

struct TrafficCircle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TrafficCircle(colorLight: .red, opacityLight: 1.0)
        }
    }
}
