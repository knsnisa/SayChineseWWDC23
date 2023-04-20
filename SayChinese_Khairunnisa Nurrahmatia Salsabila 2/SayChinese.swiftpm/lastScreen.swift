//
//  lastScreen.swift
//  SayChinese
//
//  Created by Khairunnisa Nurrahmatia Salsabila on 20/04/23.
//

import SwiftUI

struct lastScreen: View {
    var body: some View {
        NavigationStack {
        ZStack {
            Image("LastScreen")
                VStack {
                    NavigationLink(destination: Homepage()) {
                    
                            Text("Play Again")
                            .foregroundColor(Color.blue)
                            .font(.largeTitle)
                            .padding(.top, 600)
                    }
                }
            }
        }
    }
}
    struct lastScreen_Previews: PreviewProvider {
        static var previews: some View {
            lastScreen().previewInterfaceOrientation(.landscapeLeft)
        }
    }

