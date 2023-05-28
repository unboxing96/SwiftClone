//
//  ContentView.swift
//  week2
//
//  Created by kimpepe on 2023/05/27.
//

// plan
// ZStack { VStack {

// 1. titleBar
// HStack { Text, spacing, Image }
// <hr>

// 2. SwipePromotion
// HStack { Image, VStack { Text, Text, Button } } -> Swipe
// <hr>

// 3. SectionFirst
// VStack { Text, Text, Text, Image }
// 3-1. SectionBottomFirst
// HStack { Text, Button }

// 4. SectionSecond
// VStack { Text, Text, Text, Image }
// 4-1. SectionBottomSecond
// HStack { Text, Button }

// 5. SectionThird
// ZStack { Text, VStack { Text, Text, Image } -> Swipe }



import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            ZStack {
                VStack{
                    TitleBar()
                    Divider()
                    SwipePromotion()
                    Divider()
                    SectionFirst()
                    SectionFirstBottom()
                    SectionSecond()
                    SectionSecondBottom()
                    SwipeProduct()
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
