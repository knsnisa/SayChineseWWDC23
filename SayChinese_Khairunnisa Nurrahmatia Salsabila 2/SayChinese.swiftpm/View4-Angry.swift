//
//  View4-Angry.swift
//  SayChinese
//
//  Created by Khairunnisa Nurrahmatia Salsabila on 20/04/23.
//

import SwiftUI
import AVKit

struct View4_Angry: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        ZStack{
            Image("PopupAngry")
            VStack{
                
                Text("Click play to hear the 4th tone").foregroundColor(Color.blue)
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
            let sound = Bundle.main.path(forResource: "sound4", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}

struct View4_Angry_Previews: PreviewProvider {
    static var previews: some View {
        View4_Angry()
    }
}
