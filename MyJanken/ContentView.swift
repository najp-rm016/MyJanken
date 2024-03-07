//
//  ContentView.swift
//  MyJanken
//
//  Created by NSPC201admin on 2024/02/06.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
    var body: some View {
        
        VStack{
            if answerNumber == 0{
                Spacer()
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if answerNumber == 1{
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("グー")
                    .padding(.bottom)
                
            } else if answerNumber == 2{
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            Button(action: {
                
                var newAnswerNunber = 0
                
                repeat{
                    newAnswerNunber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNunber
                
                answerNumber = newAnswerNunber
            }){
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
