//
//  View1-Horse.swift
//  SayChinese
//
//  Created by Khairunnisa Nurrahmatia Salsabila on 18/04/23.
//

import SwiftUI
import AVKit


struct View1_Horse: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        ZStack{
            Image("PopupMother")
            VStack{
                
                Text("Click play to hear the 1st tone").foregroundColor(Color.blue)
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
            let sound = Bundle.main.path(forResource: "sound1", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}
struct View1_Horse_Previews: PreviewProvider {
    static var previews: some View {
        View1_Horse()
    }
}
