//
//  MainScreen(generating the story).swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/14/23.
//



import SwiftUI

struct MainScreen_generating_the_story_: View {
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
                    Image("Background")
                        .resizable()
                        .scaledToFit()
                    
                }
                .ignoresSafeArea()
                
                VStack{
                    TopMenuView()
                        .offset(x: 21 * sizeScreenIphone(), y: 0)
                    Spacer()
                }
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
                    
                }
                .offset(x: 0, y: -168 * sizeScreenIphone())
                
                VStack{
                    
                    Text("Tell me a story about a princess and...")
                        .font(.custom("Ubuntu-Bold", size:25))
                        .kerning(-0.05 * 25)
                        .frame(width: 254 * sizeScreenIphone(), height: 58 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        .multilineTextAlignment(.center)
    
                    
                }
                
                    VStack{
                        Spacer()
                        
                      
                            

                                ZStack {
                                    Button(action: {}) {
                                        Image("MicPressed")
                                            .resizable()
                                            .frame(width:165 * sizeScreenIphone(), height:164 * sizeScreenIphone())
                                            .clipShape(Ellipse())
                                    }
                                   
                                    Circle()
                                        .trim(from: 0, to: progress)
                                        .stroke(Color.Pink, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                                        .rotationEffect(.degrees(-90))
                                      
                                        .frame(width: 165 * sizeScreenIphone(), height: 164 * sizeScreenIphone())
                                        .onAppear {
                                            withAnimation(.linear(duration: duration)) {
                                                progress = 1.0
                                            }
                                        }
                                }
                                .frame(width: 165 * sizeScreenIphone(), height: 164 * sizeScreenIphone())
                                
                            
                        }
                     
                
        }
        }
    }

    struct MainScreen_generating_the_story__Previews: PreviewProvider {
        static var previews: some View {
            MainScreen_generating_the_story_()
        }
    }
