//
//  SectionFirst.swift
//  week2
//
//  Created by kimpepe on 2023/05/27.
//

// 문제 : 글씨 쪽에 horizontal padding이 안 없어짐

import SwiftUI

struct Section: View {
    var selectedTab = 0
    
    var body: some View {
        let sectionNow = sectionModelArray[selectedTab]
        
        ZStack {
            Image(sectionNow.imgName)
                .resizable()
            VStack (alignment: .leading, spacing: 0) {
                Button {
                    EmptyView()
                } label: {
                    Text(sectionNow.label)
                        .font(.system(size: 10))
                }
                Text(sectionNow.title)
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .padding(.bottom, 12)
                Text(sectionNow.body)
                    .font(.system(size: 13))
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 24)
        }
        .frame(width: 393, height: 574)
//        .border(.yellow)
    }
}

struct Section_Previews: PreviewProvider {
    static var previews: some View {
        Section(selectedTab : 0)
    }
}
