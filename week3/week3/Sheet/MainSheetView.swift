//
//  MainSheetView.swift
//  week3
//
//  Created by kimpepe on 2023/06/02.
//

import SwiftUI

struct MainSheetView: View {
    @Binding var isPresented: Bool
    @Binding var alarmArray: [[String]]

    var body: some View {
        VStack{
            SheetWheelDatePickerView(isPresented: $isPresented, alarmArray: $alarmArray)
            SettingView()
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

//struct MainSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainSheetView(isPresented: .constant(true), alarmArray: <#T##Binding<[String]>#>)
////            .preferredColorScheme(.dark)
//    }
//}
