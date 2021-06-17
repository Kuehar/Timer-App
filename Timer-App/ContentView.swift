//
//  ContentView.swift
//  Timer-App
//
//  Created by kuehar on 2021/06/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            // 背景画像の設定
            ZStack{
                Image("backgroundTimer")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                
                VStack(spacing:30.0){
                    Text("残り10秒")
                        .font(.largeTitle)
                    
                    HStack{
                        Button(action: {
                            // ボタンタップ時のアクション設定
                        }) {
                            Text("スタート")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color.white)
                                .frame(width:140,height: 140)
                                .background(Color("startColor"))
                                .clipShape(Circle())
                        }
                    }
                }
            }
            
            
            .navigationBarItems(trailing: NavigationLink(destination:SettingView()){
                Text("秒数設定")
                }
                )
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
