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
                HStack (spacing: 0) {
                    Image(systemName: swipePro.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45, height: 43)
                        .padding(.trailing, 12)
                    VStack (alignment: .leading, spacing: 0) {
                        Text(swipePro.title)
                        Text(swipePro.body)
                        Button {
                            EmptyView()
                        } label: {
                            Text(swipePro.buttonLabel)
                        }
                    }
                }
            }
            .border(.orange)
        }
        .border(.orange)
        .frame(height: 138)
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
