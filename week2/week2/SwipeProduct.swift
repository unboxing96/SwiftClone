//
//  SwipeProduct.swift
//  week2
//
//  Created by kimpepe on 2023/05/27.
//

import SwiftUI

struct SwipeProduct: View {
    var body: some View {
        TabView {
            ZStack {
                GeometryReader { proxy in
                    Text("추천")
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ZStack {
                    Image("section3_swipe01")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 509)
                    GeometryReader { proxy in
                        VStack (alignment: .leading, spacing:  0) {
                            Text("다채롭게 만개한")
                                .font(.title)
                            Text("어버이날 선물.")
                                .font(.title)
                            Text("쉽게 선물 쇼핑하기")
                        }
                    }
                }
                .frame(width: 335, height: 509)
                .border(.green)
                .padding()
            }

            ZStack {
                GeometryReader { proxy in
                    Text("추천")
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ZStack {
                    Image("section3_swipe02")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 509)
                    GeometryReader { proxy in
                        VStack (alignment: .leading, spacing:  0) {
                            Text("다채롭게 만개한")
                                .font(.title)
                            Text("어버이날 선물.")
                                .font(.title)
                            Text("쉽게 선물 쇼핑하기")
                        }
                    }
                }
                .frame(width: 335, height: 509)
                .border(.green)
                .padding()
            }
            
            ZStack {
                GeometryReader { proxy in
                    Text("추천")
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ZStack {
                    Image("section3_swipe03")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 509)
                    GeometryReader { proxy in
                        VStack (alignment: .leading, spacing:  0) {
                            Text("다채롭게 만개한")
                                .font(.title)
                            Text("어버이날 선물.")
                                .font(.title)
                            Text("쉽게 선물 쇼핑하기")
                        }
                    }
                }
                .frame(width: 335, height: 509)
                .border(.green)
                .padding()
            }
        }
        .frame(width: 395, height: 714)
        .border(.green)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct SwipeProduct_Previews: PreviewProvider {
    static var previews: some View {
        SwipeProduct()
    }
}
