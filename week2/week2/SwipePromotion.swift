//
//  SwipePromotion.swift
//  week2
//
//  Created by kimpepe on 2023/05/27.
//

import SwiftUI

struct SwipePromotion: View {
    var body: some View {
        TabView {
            ForEach (swipePromotionArray) { swipePro in
                HStack (alignment: .top, spacing: 0) {
                    ZStack {
                        Image(systemName: swipePro.icon)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45, height: 43)
                    }
                    .padding(.top, 20)
                    .frame(width: 77, height: 138, alignment: .top)
                    VStack (alignment: .leading, spacing: 0) {
                        Text(swipePro.title)
                            .font(.system(size: 13))
                            .fontWeight(.bold)
                            .padding(.bottom, 4)
                        Text(swipePro.body)
                            .font(.system(size: 12))
                            .foregroundColor(Color("ColorFontGray"))
                            .padding(.bottom, 4)
                        Button {
                            EmptyView()
                        } label: {
                            Text(swipePro.buttonLabel)
                                .font(.system(size: 12))
                        }
                    }
                    .padding(.top, 20)
                    .frame(width: 316, height: 138, alignment: .topLeading)
                }
            }
            .border(.orange)
        }
        .border(.orange)
        .frame(width: 393, height: 138)
        .onAppear {
            let indexColor = UIPageControl.appearance()
            indexColor.currentPageIndicatorTintColor = .black
            indexColor.pageIndicatorTintColor = .lightGray
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
    }
}

struct SwipePromotion_Previews: PreviewProvider {
    static var previews: some View {
        SwipePromotion()
    }
}
