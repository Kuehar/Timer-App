//
//  SettingView.swift
//  Timer-App
//
//  Created by kuehar on 2021/06/17.
//

import SwiftUI

struct SettingView: View {
    
    @AppStorage("timer_value") var timerValue = 10
    
    var body: some View {
            ZStack{
                Color("backgroundSetting")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Picker(selection:  $timerValue,label: Text("選択")){
                    Text("10")
                        .tag(10)
                    Text("20")
                        .tag(20)
                    Text("30")
                        .tag(30)
                    Text("40")
                        .tag(40)
                    Text("50")
                        .tag(50)
                    Text("60")
                        .tag(60)
                }
            }
            }
        }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
