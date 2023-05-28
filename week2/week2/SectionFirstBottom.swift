//
//  SectionFirstBottom.swift
//  week2
//
//  Created by kimpepe on 2023/05/27.
//

import SwiftUI

struct SectionFirstBottom: View {
    var body: some View {
        HStack (spacing: 0) {
            Text("￦1,250,000부터")
            Spacer()
            Button {
                EmptyView()
            } label: {
                Text("구입하기")
            }
        }
        .frame(height: 67)
        .background(Color("ColorButtonGray"))
    }
}

struct SectionFirstBottom_Previews: PreviewProvider {
    static var previews: some View {
        SectionFirstBottom()
    }
}
