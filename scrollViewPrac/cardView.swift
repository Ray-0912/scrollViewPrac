//
//  cardView.swift
//  scrollViewPrac
//
//  Created by 楊昇融 on 2020/3/13.
//  Copyright © 2020 limwris. All rights reserved.
//

import SwiftUI

struct cardView: View {
    var image: String
    var category: String
    var heading: String
    var author: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

struct cardView_Previews: PreviewProvider {
    static var previews: some View {
        cardView(image: "swift-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Simon Ng")
    }
}
