//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Philip Al-Twal on 10/24/22.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - PROPERTIES
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 3) {
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // HEADER
            HeaderView(title: "Credits")
            // CONTENT
            Text("Philip Al-Twal")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            Text("iOS Engineer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }//: VSTACK
    }//: BODY
}

//MARK: - PREVIEW
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
