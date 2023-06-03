//
//  SheetWheelDatePickerView.swift
//  week3
//
//  Created by kimpepe on 2023/06/02.
//

import SwiftUI

struct SheetWheelDatePickerView: View {
    @State var selectedDate = Date()
    @Binding var isPresented: Bool
    @Binding var alarmArray: [[String]]
    @Binding var selectedTime: [String]
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    isPresented = false
                } label: {
                    Text("취소")
                }
                Spacer()
                Text("알람 추가")
                Spacer()
                Button {
                    print(getHourAndMinute())
                    alarmArray.append(getHourAndMinute())
                    isPresented = false
                } label: {
                    Text("저장")
                }
            }
            
            DatePicker("", selection: $selectedDate, displayedComponents: .hourAndMinute)
                .datePickerStyle(WheelDatePickerStyle())
        }
        .padding()
    }
    
    func getHourAndMinute() -> [String] {
        let calendar = Calendar.current
        var hour = calendar.component(.hour, from: selectedDate)
        let minute = calendar.component(.minute, from: selectedDate)
        
        let isPM : String
        
        if hour >= 12 {
            isPM = "PM"
            hour -= 12
        } else {
            isPM = "AM"
        }
        
        let hourString = String(hour)
        let minuteString = String(format: "%02d", minute)
        let timeString = "\(hourString):\(minuteString)"
        

        return [timeString, isPM]
    }
}

//struct SheetWheelDatePickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        SheetWheelDatePickerView(isPresented: .constant(true))
//    }
//}
