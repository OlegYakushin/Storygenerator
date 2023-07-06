//
//  AskAQuestion.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/15/23.
//

import SwiftUI

struct AskAQuestion: View {
    @State private var progress: CGFloat = 0.0
    @State private var duration: Double = 10
    var body: some View {
      
        ZStack{
            Color.BackgroundPink
                .ignoresSafeArea()
            
            
            
           

            VStack{
                Spacer()
                Image("BackgroundPink")
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
                
                Text("Ask a question")
                    .font(.custom("Baloo-Regular", size:35 * sizeScreenIphone()))
                    .kerning(-0.05 * 35 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                
                Text("Wanna know more details about your story?")
                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                    .kerning(-0.05 * 18 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                
            }
            .offset(x: 0, y: -168 * sizeScreenIphone())
            
            VStack{
                
                Text("What happened with the princess after...")
                    .font(.custom("Ubuntu-Bold", size:25 * sizeScreenIphone()))
                    .kerning(-0.05 * 25 * sizeScreenIphone())
                    .frame(width: 254 * sizeScreenIphone(), height: 58 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                    .multilineTextAlignment(.center)

                
            }
            
                VStack{
                    Spacer()
                    ZStack {
                        Button(action: {}) {
                            Image("MicPink")
                                .resizable()
                                .frame(width:165 * sizeScreenIphone(), height:164 * sizeScreenIphone())
                                .clipShape(Ellipse())
                        }
                       
                        Circle()
                            .trim(from: 0, to: progress)
                            .stroke(Color.Pink, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                            .rotationEffect(.degrees(-90))
                          
                            .frame(width: 165 * sizeScreenIphone(), height: 164 * sizeScreenIphone())
                    }
                    .frame(width: 165 * sizeScreenIphone(), height: 164 * sizeScreenIphone())
                    .onAppear {
                        withAnimation(.linear(duration: duration)) {
                            progress = 1.0
                        }
                    }
                    }
                 
            
    }
    }
}

struct AskAQuestion_Previews: PreviewProvider {
    static var previews: some View {
        AskAQuestion()
    }
}
