//
//  ContentView.swift
//  SuperBallStore
//
//  Created by Mitya Kim on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                  VStack(spacing: 0) {
                    FeaturedTabView()
                      .frame(height: UIScreen.main.bounds.width / 1.475) 
                      .padding(.vertical, 20)
                    
                    FooterVIew()
                      .padding(.horizontal)
                  } //: VSTACK
                }) //: SCROLL
            }//:VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//:ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
