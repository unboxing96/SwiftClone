//
//  ContentView.swift
//  week3
//
//  Created by kimpepe on 2023/06/01.
//


import SwiftUI


struct ContentView: View {
    let coloredNavAppearance = UINavigationBarAppearance()
    @State var alarmArray : [[String]] = []
    @State var isShownSheet = false
    @State var selectedAlarmIndex: Int?
    
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("ColorFontWhite"))]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color("ColorFontWhite"))]
        
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
        
        UITableView.appearance().backgroundColor = UIColor(Color("ColorBgBlack"))
    }
    
    var body: some View {
        NavigationView {
            List {
                Section(header: HStack{
                    Image(systemName: "bed.double.fill")
                    Text("수면 | 기상")
                        .font(.system(size: 17))
                }) {
                    HStack (spacing: 0) {
                        Text("알람 없음")
                            .font(.system(size: 15))
                            .padding(.vertical, 10)
                        Spacer()
                        Button {
                            print("설정")
                        } label: {
                           Text("설정")
                                .padding(.horizontal, 9)
                                .padding(.vertical, 6)
                                .font(.system(size: 13))
                                .foregroundColor(Color("ColorFontOrange"))
                                .background(Color("ColorBgGray"))
                        }
                        .cornerRadius(30)
                    }
                }
                .foregroundColor(Color("ColorFontWhite"))
                .listRowBackground(Color.clear)
                .listRowSeparatorTint(.white)
                
                // alarmArray에 원소가 있을 때만 기타 section이 보이게
                if alarmArray.count != 0 {
                    Section(header: Text("기타").font(.system(size: 17))) {
                        ForEach(alarmArray.indices, id: \.self) { index in
                            Button {
                                selectedAlarmIndex = index
                            } label: {
                                AlarmItemView(isOn: true, isPM: alarmArray[index][1], timeString: alarmArray[index][0])
                            }
                        }
                    }
                    .foregroundColor(Color("ColorFontWhite"))
                    .listRowBackground(Color.clear)
                    .listRowSeparatorTint(.white)
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("알람")
            .toolbar {
                Button {
                    self.isShownSheet.toggle()
                    print("+")
                } label: {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $isShownSheet) {
                    MainSheetView(isPresented: $isShownSheet, alarmArray: $alarmArray)
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
