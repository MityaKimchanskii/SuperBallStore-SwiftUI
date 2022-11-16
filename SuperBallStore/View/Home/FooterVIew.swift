//
//  FooterVIew.swift
//  SuperBallStore
//
//  Created by Mitya Kim on 11/16/22.
//

import SwiftUI

struct FooterVIew: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the best helmets.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
        }//:VStack
        .padding()
    }
}

struct FooterVIew_Previews: PreviewProvider {
    static var previews: some View {
        FooterVIew()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
