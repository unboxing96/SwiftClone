//
//  SectionFirstBottom.swift
//  week2
//
//  Created by kimpepe on 2023/05/27.
//

import SwiftUI

struct SectionBottom: View {
    var body: some View {
        HStack (spacing: 0) {
            Text("￦1,250,000부터")
                .font(.system(size: 10))
            Spacer()
            Button {
                EmptyView()
            } label: {
                Text("구입하기")
                    .padding(.vertical, 6)
                    .padding(.horizontal, 16)
                    .fontWeight(.bold)
                    .font(.system(size: 13))
                    .background(Color("ColorButtonGray"))
                    .cornerRadius(CGFloat(17))
            }
        }
        .frame(height: 67)
        .padding(.horizontal)
        .background(Color("ColorBottomGray"))
    }
}

struct SectionBottom_Previews: PreviewProvider {
    static var previews: some View {
        SectionBottom()
    }
}
