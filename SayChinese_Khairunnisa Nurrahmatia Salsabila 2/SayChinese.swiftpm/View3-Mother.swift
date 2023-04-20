//
//  View3-Mother.swift
//  SayChinese
//
//  Created by Khairunnisa Nurrahmatia Salsabila on 20/04/23.
//

import SwiftUI
import AVKit

struct View3_Mother: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        ZStack{
            Image("PopupHorse")
            VStack{
                
                Text("Click play to hear the 3rd tone").foregroundColor(Color.blue)
                    .font(.title2)
                    .padding(.top, 350)
                HStack {
                    Button(action: {
                        self.audioPlayer.play()
                        
                    }, label: {
                            Image("iconPlay")
                    })
                    .padding()

                }
            }
        }.onAppear{
            let sound = Bundle.main.path(forResource: "sound3", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}

struct View3_Mother_Previews: PreviewProvider {
    static var previews: some View {
        View3_Mother()
    }
}
