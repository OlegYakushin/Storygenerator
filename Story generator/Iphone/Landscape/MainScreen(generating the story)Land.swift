//
//  MainScreen(generating the story)Land.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct MainScreen_generating_the_story_Land: View {
    @State private var progress: CGFloat = 0.0
    @State private var duration: Double = 10
        var body: some View {
          
            ZStack{
                Color.Background
                    .ignoresSafeArea()
                
                RadialGradient(
                    gradient: Gradient(colors: [
                        Color(#colorLiteral(red: 0.8039215686, green: 0.8274509804, blue: 1, alpha: 1)),
                        Color.clear
                    ]),
                    center: .topTrailing,
                    startRadius: 0,
                    endRadius: UIScreen.main.bounds.width * 0.6
                )
                .ignoresSafeArea()
                RadialGradient(
                    gradient: Gradient(colors: [
                        Color(#colorLiteral(red: 0.8039215686, green: 0.8274509804, blue: 1, alpha: 1)),
                        Color.clear
                    ]),
                    center: UnitPoint(x: -0.5, y: 0.5),
                    startRadius: 0,
                    endRadius: UIScreen.main.bounds.height * 0.4
                )
                .ignoresSafeArea()
                
               

                VStack{
                    Spacer()
                    Image("BackgroundLand")
                        .resizable()
                        .frame(width:844 * sizeScreenIphone(), height:330 * sizeScreenIphone())
                    
                }
                .ignoresSafeArea()
                
                VStack{
                    TopMenuLandscapeView()
                        .offset(x:21 * sizeScreenIphone(), y: 0)
                    Spacer()}
                .padding()
                VStack{
                  
                    Text("Create your first story!")
                        .font(.custom("Baloo-Regular", size:35))
                        .kerning(-0.05 * 35)
                        .foregroundColor(Color.BlueShadow)
                    
                    Text("What is your story about?")
                        .font(.custom("Ubuntu-Regular", size:18))
                        .kerning(-0.05 * 18)
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                  
                    Spacer()
                }
                .padding(.top, 20 * sizeScreenIphone())
                
                VStack{
                    
                    Text("Tell me a story about a princess and...")
                        .font(.custom("Ubuntu-Bold", size:25))
                        .kerning(-0.05 * 25)
                        .frame(width: 403 * sizeScreenIphone(), height: 29 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        .multilineTextAlignment(.center)
                        .opacity(0.7)
    
                    
                }
                
                    VStack{
                        Spacer()
                        
                      
                            

                                ZStack {
                                    Button(action: {}) {
                                        Image("MicPressed")
                                            .resizable()
                                            .frame(width:116.5 * sizeScreenIphone(), height:116.75 * sizeScreenIphone())
                                            .clipShape(Ellipse())
                                        
                                    }
                                   
                                    Circle()
                                        .trim(from: 0, to: progress)
                                        .stroke(Color.Pink, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                                        .rotationEffect(.degrees(-90))
                                      
                                        .frame(width: 116.5 * sizeScreenIphone(), height: 116.75 * sizeScreenIphone())
                                        .onAppear {
                                            withAnimation(.linear(duration: duration)) {
                                                progress = 1.0
                                            }
                                        }
                                }
                                .frame(width: 116.5 * sizeScreenIphone(), height: 116.75 * sizeScreenIphone())
                                
                            
                        }
                     
                
        }
        }
    }

struct MainScreen_generating_the_story_Land_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen_generating_the_story_Land()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
