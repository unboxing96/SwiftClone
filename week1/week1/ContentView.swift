//
//  ContentView.swift
//  week1
//
//  Created by kimpepe on 2023/04/26.
//

// time: 09:52 ~
// Normal: light
// background: ZStack; color .gray
// container: VStack; horizontal 25px
// body: content1, content2, content3, content4
//      content1: HStack; Image1, Image2
//      content2: HStack; Text1, Text2
//      content3: ZStack; Image1, Text1, Button1, onTapGesture -> flip
//      content4: HStack; Text3; padding, foregroundColor, border-radius

import SwiftUI

struct ContentView: View {
    
    @State private var flip: Bool = false
    
    var body: some View {
        // background: ZStack; color .gray
        ZStack {
            Color(hex: 0xF0F0F5)
                .ignoresSafeArea()
            
            // container: VStack; horizontal 25px
            VStack {
                
                // content1: HStack; Image1, Image2
                HStack() {
//                    Color.red
                    Image("calendar")
                        .frame(width: 28, height: 27)
                        .padding(.horizontal, -8)
                        .padding([.trailing], 16)
                    
                    Image("gearshape")
                        .frame(width: 28, height: 27)
                        .padding(.horizontal, -8)
                        .padding([.trailing], 5)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .frame(height: 51)
                .padding([.top])
                .padding([.bottom])
                
                // content2: HStack; Text1, Text2
                VStack(alignment: .leading){
                    Text("월클 디벨로퍼 PEPE.")
                    Text("오늘도 화이팅하세요!")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 50)
                .padding([.bottom], 38)
                
                
                // content3: ZStack; Image1, Text1, Button1
                // onTapGesture -> flip
                ZStack{
                    Color.white
                    if flip {
                        VStack{
                            Text("한눈에 보는 출석 규정")
                                .foregroundColor(.black)
                                .padding([.bottom], 35)
                                .padding([.leading], 40)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Image("Image_back")
                                .resizable()
                                .frame(width: 164, height: 309)
                        }
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    } else {
                        VStack{
                            Image("image_front")
                                .resizable()
                                .frame(width: 152, height: 226)
                                .padding([.bottom], 42)
                            Text("오늘은 아카데미 휴일!")
                                .foregroundColor(.black)
                            Text("푹 쉬고 다음에 만나요.")
                                .padding([.bottom], 16)
                                .foregroundColor(.black)
                            Button {
                                EmptyView()
                            } label: {
                                Text("출석 규정 보러가기 􀆊")
                                    .foregroundColor(Color(hex: 0x8483F7))
                            }
                        }
                        
                    }
                }
                .cornerRadius(24)
                .frame(width: 343, height: 463)
                .padding([.bottom], 30)
                .onTapGesture {
                    withAnimation(.linear(duration: 0.5)) {
                        flip.toggle()
                    }
                }
                .rotation3DEffect(.degrees(flip ? 180 : 0), axis: (x: 0, y: 1, z: 0), perspective: 0.2)
                
                // content4: HStack; Text1; padding, foregroundColor, border-radius
                HStack{
                    Button {
                        EmptyView()
                    } label: {
                        Text("출쓱하기")
                            .padding([.horizontal], 135)
                            .padding([.vertical], 38)
                            .foregroundColor(.white)
                            .background(Color(hex: 0x36356A))
                            .cornerRadius(50)
                    }
                }
                .frame(height: 100)
            }
            .padding([.leading, .trailing], 25)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex >> 16) & 0xff) / 255
        let green = Double((hex >> 8) & 0xff) / 255
        let blue = Double((hex >> 0) & 0xff) / 255

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
