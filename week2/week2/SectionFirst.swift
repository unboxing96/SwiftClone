//
//  SectionFirst.swift
//  week2
//
//  Created by kimpepe on 2023/05/27.
//

import SwiftUI

struct SectionFirst: View {
    var body: some View {
        ZStack {
            Image("section1")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .frame(width: 393, height: 574)
            VStack (alignment: .leading, spacing: 0) {
                Button {
                    EmptyView()
                } label: {
                    Text("NEW")
                }
                Text("iPhone 14")
                Text("iPhone 14 그리고 큼직한 사이즈의 iPhone 14 Plus. 획기적인 도약을 이뤄낸 배터리 성능. 프로급 카메라. 6가지 멋진 컬러.")
                Spacer()
            }
        }
        .border(.yellow)
        .padding(.bottom)
    }
}

struct SectionFirst_Previews: PreviewProvider {
    static var previews: some View {
        SectionFirst()
    }
}
