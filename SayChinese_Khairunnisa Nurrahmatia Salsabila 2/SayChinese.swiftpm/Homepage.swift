//
//  Homepage.swift
//  SayChinese
//
//  Created by Khairunnisa Nurrahmatia Salsabila on 20/04/23.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Image("Homepage")
                NavigationLink(destination: MainScreen().navigationBarBackButtonHidden()){
                    HStack {
                            Image("buttonPlay")
                                .resizable()
                                .frame(width: 300, height: 300)
                                .padding(.leading, 60)
                                .padding(.top, 520)
                            
                        }
                    }
                }
            }
        }
    }

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage().previewInterfaceOrientation(.landscapeLeft)
    }
}
