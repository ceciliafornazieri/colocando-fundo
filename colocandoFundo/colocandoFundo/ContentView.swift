//
//  ContentView.swift
//  colocandoFundo
//
//  Created by Cecília Fornazieri on 06/02/23.
//

import SwiftUI

struct ContentView: View {
    
    var CatchPhrase: String = "cottontail"
    var Birthday: String = "Birthday: 02/02"
    var Personality: String = "Uchi"
    var Species: String = "Species: Rabbit"
    var Hobby: String = "Fitness"
    var Saying: String = "Always help a friend in need"
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                Image("fundo")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: . center)
                    .opacity(0.5)
                
//                Rectangle()
//                    .fill(Color.black)
//                    .frame(width:340, height:560 )
//                    .offset(y: -70)
//                    .opacity(0.10)
                
                RoundedRectangle(cornerRadius: 40)
                
                    .fill(Color.init(red: 255, green: 248, blue: 228))
                    .frame(width:330, height:550 )
                    .offset(y: -70)
                    .shadow(radius: 10, x: 0, y: 0)
                
                
                
                VStack (alignment: .center) {
                    
                    CircleImage()
                        .offset(y: -200)
                        .offset(x:0)
                        .padding(.bottom, 0)
                    
                    Text(self.CatchPhrase)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .offset(y: -200)
                        .offset(x:0)
                    
                    Text(self.Birthday)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .offset(y: -200)
                        .offset(x:0)
                    
                    Text(self.Species)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .offset(y: -200)
                        .offset(x:0)
                    
                    //personality and hobby
                    HStack  {
                        Text(self.Personality)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .offset(y: -100)
                            .offset(x:88)
                        Spacer()
                        
                        Text(self.Hobby)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .offset(y: -100)
                            .offset(x:110)
                        
                        
                        
                        Text(self.Saying)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .offset(y: 40)
                            .offset(x:-79)
                        
                        
                        
                        
                        
                    }
                    
                    
                }
                .padding()
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
