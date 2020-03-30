//
//  ContentView.swift
//  scrollViewPrac
//
//  Created by 楊昇融 on 2020/3/13.
//  Copyright © 2020 limwris. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack {
                VStack(alignment: .leading) {
                    Text(getDate())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Text("Your Reading")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                }
                .layoutPriority(100)
                
                Spacer()
            }
            .padding([.top, .horizontal])
            .layoutPriority(-100)
            
            HStack {
                
                cardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Simon Ng")
                    .frame(width: 300)
                cardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Edinting App", author: "Gabriel Theodoropoulos")
                    .frame(width: 300)
                cardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                    .frame(width: 300)
                cardView(image: "natural-language-api", category: "iOS", heading: "What's New in Nature API", author: "Sai Kambampati")
                    .frame(width: 300)
            }
            .layoutPriority(200)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func getDate() -> String {
    let date = Date()
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "en_US")
    formatter.dateFormat = "EEE, MMM dd"
    
    //EEEE:表示星期幾(ex:Monday),使用1-3個字母表示縮寫
    //MMMM:月份的全寫(ex:October),使用1-3個字母表示月份的縮寫
    //dd:表示日期,使用一個字母表示前面不會補0
    //YYYY:年份(ex：:2016)
    //HH:兩個數字表示小時(02或21)
    //mm:兩個數字表示分鐘 (02或54)
    //ss:秒
    //zzz:時區

    let stringDate = formatter.string(from: date)
    
    return stringDate
}
