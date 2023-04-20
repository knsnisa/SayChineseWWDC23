//
//  MainScreen.swift
//  SayChinese
//
//  Created by Khairunnisa Nurrahmatia Salsabila on 19/04/23.
//NavigationStack{


import SwiftUI

struct MainScreen: View {

    var body: some View {
        NavigationStack {
            ZStack {
                Image("MainScreen")
//                NavigationLink(destination: View2_Hemp()){
//
//                    HStack {
//                            Image("ButtonTone2")
//                                .resizable()
//                                .frame(width: 300, height: 300)
//                                .position(x: 900, y: 600)
//                        }
//                }
//
//
//                    NavigationLink(destination: View1_Horse()){
//                        HStack {
//                            Image("ButtonTone1")
//                            .resizable()
//                            .frame(width: 300, height: 300)
//                        Spacer()
//                            .position(x: 300, y: 500)
//
//
//                    }
//                }
                
                
                    
                    NavigationLink(destination: View3_Mother()){
                        HStack {
                            Image("ButtonTone3")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .position(x: 900, y: 600)

//                            .position(x: 1500, y: 1000)
//                            .position()
//                            .padding(.leading, 900)
//                            .padding(.top, 520)
//                            .padding(.vertical, 200)
                        
                    }
                }
                
//
//                    NavigationLink(destination: View4_Angry()){
//                        HStack {
//                            Image("ButtonTone4")
//                            .resizable()
//                            .frame(width: 300, height: 300)
//                            .padding(.leading, -600)
//                            .padding(.top, 520)
//                            .padding(.vertical, 200)
//
//                    }
//                }
                
                HStack {
                    NavigationLink(destination: lastScreen()) {
                        Image("ButtonContinue")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.top, 600)
                    }
                }
            }
        }
    }

    
    
    
   
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen().previewInterfaceOrientation(.landscapeLeft)
    }
}
