import SwiftUI

struct SwipeProduct<Content: View>: View {
    typealias PageIndex = Int
    
    let pageCount: Int
    let visibleEdgeSpace: CGFloat
    let spacing: CGFloat
    let content: (PageIndex) -> Content
    
    @GestureState private var dragOffset: CGFloat = 0
    @State private var currentIndex: Int = 0
    
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
            
            Text("추천")
                .font(.system(size: 24))
                .fontWeight(.bold)
                .padding(.top, 38)
                .padding(.leading, 20)

            HStack(spacing: spacing) {
                ForEach(0..<pageCount, id: \.self) { index in
                    content(index)
                        .frame(width: pageWidth, height: proxy.size.height)
                        .cornerRadius(14)
                        .shadow(color: Color("ColorDividerGray"), radius: 14)
                }
            }
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

                        currentIndex = max(min(currentIndex + increment, pageCount - 1), 0)
                    }
            )
        }
    }
}

struct SwipeProductDemo: View {
    var body: some View {
        SwipeProduct(pageCount: swipeProductArray.count, visibleEdgeSpace: 20, spacing: 5) { index in
            let swipePro = swipeProductArray[index]
            
            ZStack {
                Image(swipePro.imgName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                GeometryReader { proxy in
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
                }
            }
            .frame(height: 509)
        }
        .frame(width: 395, height: 714)
    }
}

struct SwipeProductDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwipeProductDemo()
    }
}
