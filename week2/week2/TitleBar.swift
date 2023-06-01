//
//  TitleBar.swift
//  week2
//
//  Created by kimpepe on 2023/05/27.
//

// 문제 : bottom padding인지 margin인지가 사라지지 않음

import SwiftUI

struct TitleBar: View {
    var body: some View {
        HStack {
            Text("쇼핑하기")
                .font(.largeTitle)
                .fontWeight(.black)
            Spacer()
            Image("titleBarLogo")
        }
//        .border(.red)
    }
}

struct TitleBar_Previews: PreviewProvider {
    static var previews: some View {
        TitleBar()
    }
}
