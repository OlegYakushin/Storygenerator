//
//  AskAQuestionLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct AskAQuestionLand: View {
    @State private var progress: CGFloat = 0.0
    @State private var duration: Double = 10
        var body: some View {
          
            ZStack{
                Color.BackgroundPink
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
                  
                    Text("Ask a question")
                        .font(.custom("Baloo-Regular", size:35 * sizeScreenIphone()))
                        .kerning(-0.05 * 35 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                    
                    Text("Wanna know more details about your story?")
                        .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                        .kerning(-0.05 * 18 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                  
                    Spacer()
                }
                .padding(.top, 20 * sizeScreenIphone())
                
                VStack{
                    
                    Text("What happened with the princess after...")
                        .font(.custom("Ubuntu-Bold", size:25 * sizeScreenIphone()))
                        .kerning(-0.05 * 25 * sizeScreenIphone())
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
                                        Image("MicPink")
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

struct AskAQuestionLand_Previews: PreviewProvider {
    static var previews: some View {
        AskAQuestionLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
