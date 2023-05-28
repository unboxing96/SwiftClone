//
//  SectionSecond.swift
//  week2
//
//  Created by kimpepe on 2023/05/27.
//

import SwiftUI

struct SectionSecond: View {
    var body: some View {
        ZStack {
            Image("section2")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .frame(width: 393, height: 574)
            VStack (alignment: .leading, spacing: 0) {
                Button {
                    EmptyView()
                } label: {
                    Text("NEW")
                }
                Text("iPad")
                Text("다양한 일상 작업에 맞는 완전히 새롭고, 컬러풀한 iPad, 새로운 iPad를 소개합니다.")
                Spacer()
            }
        }
        .border(.yellow)
        .padding(.bottom)
    }
}

struct SectionSecond_Previews: PreviewProvider {
    static var previews: some View {
        SectionSecond()
    }
}
