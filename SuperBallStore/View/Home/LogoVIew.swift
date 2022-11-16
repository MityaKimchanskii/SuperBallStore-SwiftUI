//
//  LogoVIew.swift
//  SuperBallStore
//
//  Created by Mitya Kim on 11/16/22.
//

import SwiftUI

struct LogoVIew: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("SUPER".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("BALL")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

struct LogoVIew_Previews: PreviewProvider {
    static var previews: some View {
        LogoVIew()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
