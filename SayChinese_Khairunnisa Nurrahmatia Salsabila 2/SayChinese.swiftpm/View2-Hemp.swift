//
//  View2-Hemp.swift
//  SayChinese
//
//  Created by Khairunnisa Nurrahmatia Salsabila on 20/04/23.
//

import SwiftUI
import AVKit


struct View2_Hemp: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        ZStack{
            Image("PopupHemp")
            VStack{
                
                Text("Click play to hear the 2nd tone").foregroundColor(Color.blue)
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
            let sound = Bundle.main.path(forResource: "sound2", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}

struct View2_Hemp_Previews: PreviewProvider {
    static var previews: some View {
        View2_Hemp()
    }
}
