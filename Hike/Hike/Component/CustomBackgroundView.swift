//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by 김명현 on 1/4/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        
        ZStack {
            // MARK: - 3. DEPTH
            
            Color.customGreenDark
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 12)
            // MARK: - 2. LIGHT
            Color.customGreenLight
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .offset(y: 3)
                .opacity(0.85)
            // MARK: - 1. SURFACE
            
            
            LinearGradient(colors: [Color.customGreenLight,Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
                .clipShape(RoundedRectangle(cornerRadius: 40))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
