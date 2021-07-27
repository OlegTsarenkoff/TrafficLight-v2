//
//  ChangeTrafficLight.swift
//  TrafficLight-v2
//
//  Created by Oleg Tsarenkoff on 27.07.21.
//

import SwiftUI

struct ChangeTrafficLight: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.darkEnd)
                    .frame(width: 300, height: 100)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.7), radius: 10, x: -5, y: -5)
                Label(title, systemImage: "chevron.right.circle.fill")
                    .foregroundColor(.gray)
                    .font(.title)
            }
        }
    }
}

struct ChangeTrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        ChangeTrafficLight(title: "Start!", action: {})
    }
}
