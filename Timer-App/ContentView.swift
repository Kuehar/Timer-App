//
//  ContentView.swift
//  Timer-App
//
//  Created by kuehar on 2021/06/17.
//

import SwiftUI

struct ContentView: View {
    @State var timerHandler : Timer?
    @State var count = 0
    @AppStorage("timer_value") var timerValue = 10
    
    
    var body: some View {
        NavigationView{
            // 背景画像の設定
            ZStack{
                Image("backgroundTimer")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                
                VStack(spacing:30.0){
                    Text("残り\(timerValue-count)秒")
                        .font(.largeTitle)
                    
                    HStack{
                        Button(action: {
                            startTimer()
                            // ボタンタップ時のアクション設定
                        }) {
                            // スタートボタン
                            Text("スタート")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color.white)
                                .frame(width:140,height: 140)
                                .background(Color("startColor"))
                                .clipShape(Circle())
                        }
                        // ストップボタン
                        Button(action:{
                            // ボタンストップ時のアクション
                            
                            if let unwrapedTimeHandler = timerHandler{
                                if unwrapedTimeHandler.isValid == true{
                                    unwrapedTimeHandler.invalidate()
                                }
                            }
                        }){
                            Text("ストップ")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color.white)
                                .frame(width:140,height: 140)
                                .background(Color("stopColor"))
                                .clipShape(Circle())
                        }
                    }
                }
            }
            .onAppear{
                count = 0
            }
            
            
            .navigationBarItems(trailing: NavigationLink(destination:SettingView()){
                Text("秒数設定")
                }
                )
            }
    }
    func countDownTimer(){
     count += 1
        
        if timerValue - count <= 0{
            timerHandler?.invalidate()
    }
    }
    
    func startTimer(){
        if let unwrappedTimeHandler = timerHandler{
            if unwrappedTimeHandler.isValid == true{
                return
            }
        }
        
        if timerValue - count <= 0{
            count = 0
        }
        
        timerHandler = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            countDownTimer()
        }
        
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
