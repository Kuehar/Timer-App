//
//  SettingView.swift
//  Timer-App
//
//  Created by kuehar on 2021/06/17.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("タイマー画面")
            }
            
            .navigationBarItems(trailing: NavigationLink(destination:SettingView()){
                Text("秒数設定")
                }
                )
            }
        }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
