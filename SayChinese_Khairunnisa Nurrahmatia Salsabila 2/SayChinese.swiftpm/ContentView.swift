import SwiftUI
import UIKit


struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                NavigationLink(destination: Homepage().navigationBarBackButtonHidden()){
                    TabView {
                        SwiftUIView()
                        SwiftUIView1()
                        SwiftUIView2()
                        SwiftUIView3()
                        Image(systemName: "arrowshape.right.fill")
                                                .font(.system(size: 80))
                                            .foregroundColor(Color.yellow)}
                    }
                    .tabViewStyle(.page)
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
                        
                    
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewInterfaceOrientation(.landscapeLeft)
    }
}
