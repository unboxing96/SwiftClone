////
////  SwipeProduct.swift
////  week2
////
////  Created by kimpepe on 2023/05/27.
////
//
//
//import SwiftUI
//
//struct SwipeProduct: View {
//
//    let screenWidth = UIScreen.main.bounds.width
//    @State private var offset: CGFloat = 0.0
//
//    var body: some View {
//        ZStack {
//            GeometryReader { proxy in
//                Text("추천")
//                    .font(.system(size: 24))
//                    .fontWeight(.black)
//                    .padding(.leading, 20)
//                    .padding(.top, 38)
//            }
//            HStack {
//                ForEach(swipeProductArray.indices, id: \.self) { index in
//                    let swipePro = swipeProductArray[index]
//
//                    ZStack {
//                        Image(swipePro.imgName)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(height: 509)
//                            .offset(x: offset)
//                        GeometryReader { proxy in
//                            VStack(alignment: .leading, spacing: 0) {
//                                Text(swipePro.title)
//                                    .font(.system(size: 26))
//                                    .fontWeight(.bold)
//                                    .padding(.bottom, 8)
//                                    .foregroundColor(index == 0 ? Color("ColorFontBlack") : Color("ColorFontWhite"))
//                                Text(swipePro.body)
//                                    .font(.system(size: 14))
//                                    .foregroundColor(index == 0 ? Color("ColorFontBlack") : Color("ColorFontGray"))
//                            }
//                            .padding(.top, 24)
//                            .padding(.leading, 20)
//                        }
//                    }
//                    .frame(width: screenWidth * 0.85, height: 509)
//                    .cornerRadius(14)
//                    .shadow(color: Color("ColorDividerGray"), radius: 14)
//                }
//                .padding(.horizontal, 5)
//            }
//        }
//        .frame(width: 395, height: 714)
//        .border(Color.green)
//    }
//}
//
//struct SwipeProduct_Previews: PreviewProvider {
//    static var previews: some View {
//        SwipeProduct()
//    }
//}


import SwiftUI

struct SwipeProduct <Content: View>: View {
    typealias PageIndex = Int
    
    let pageCount: Int
    let visibleEdgeSpace: CGFloat
    let spacing: CGFloat
    let content: (PageIndex) -> Content
    
    @GestureState var dragOffset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    init(
        pageCount: Int,
        visibleEdgeSpace: CGFloat,
        spacing: CGFloat,
        @ViewBuilder content: @escaping (PageIndex) -> Content
    ) {
        self.pageCount = pageCount
        self.visibleEdgeSpace = visibleEdgeSpace
        self.spacing = spacing
        self.content = content
    }
    
    var body: some View {
        GeometryReader { proxy in
            let baseOffset: CGFloat = spacing + visibleEdgeSpace
            let pageWidth: CGFloat = proxy.size.width - (visibleEdgeSpace + spacing) * 2
            let offsetX: CGFloat = baseOffset + CGFloat(currentIndex) * -pageWidth + CGFloat(currentIndex) * -spacing + dragOffset

            HStack(spacing: spacing) {
                ForEach(swipeProductArray.indices, id: \.self) { index in
                    let swipePro = swipeProductArray[index]

                    ZStack {
                        Image(swipePro.imgName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 509)
                            .offset(x: offsetX)
                        GeometryReader { innerProxy in
                            VStack(alignment: .leading, spacing: 0) {
                                Text(swipePro.title)
                                    .font(.system(size: 26))
                                    .fontWeight(.bold)
                                    .padding(.bottom, 8)
                                    .foregroundColor(index == 0 ? Color("ColorFontBlack") : Color("ColorFontWhite"))
                                Text(swipePro.body)
                                    .font(.system(size: 14))
                                    .foregroundColor(index == 0 ? Color("ColorFontBlack") : Color("ColorFontGray"))
                            }
                            .padding(.top, 24)
                            .padding(.leading, 20)
                            .frame(
                                   width: pageWidth,
                                   height: proxy.size.height
                               )
                        }
                    }
                    .frame(width: pageWidth, height: proxy.size.height)
                    .cornerRadius(14)
                    .shadow(color: Color("ColorDividerGray"), radius: 14)
                }
            }
            .contentShape(Rectangle())
            .offset(x: offsetX)
            .gesture(
                DragGesture()
                    .updating($dragOffset) { value, out, _ in
                        out = value.translation.width
                    }
                    .onEnded { value in
                        let offsetX = value.translation.width
                        let progress = -offsetX / pageWidth
                        let increment = Int(progress.rounded())

                        currentIndex = max(min(currentIndex + increment, swipeProductArray.count - 1), 0)
                    }
            )
        }
    }

}

struct SwipeProduct_Previews: PreviewProvider {
    static var previews: some View {
        SwipeProduct(pageCount: 3, visibleEdgeSpace: 15, spacing: 0) { index in
            Text("Content \(index)")
        }
    }
}

