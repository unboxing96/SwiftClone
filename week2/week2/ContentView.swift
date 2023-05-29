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

// 문제 : 특정 struct에 horizontal padding을 붙이면, 다른 struct의 padding 변함. 왜 ??


import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ScrollView {
                TitleBar()
                    .padding(.horizontal)
                Divider()
                    .padding(.horizontal)
                SwipePromotion()
                Divider()
                    .padding(.horizontal)
                Section(selectedTab: 0)
                    .padding(.bottom, 30)
                SectionBottom()
                Section(selectedTab: 1)
                    .padding(.bottom, 30)
                SectionBottom()
                SwipeProduct(pageCount: 3, visibleEdgeSpace: 16, spacing: 16) { index in
                    Text("Content \(index)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
