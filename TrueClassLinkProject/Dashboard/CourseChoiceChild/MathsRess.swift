//
//  MathsRess.swift
//  TrueClassLinkProject
//
//  Created by Apprenant65 on 15/03/2024.
//

import SwiftUI

struct MathsRess: View {
    struct OrangeBigButton2: View, Identifiable  {
        var id = UUID()
        let text: String
        let imageButton: Image
        
        var body: some View {
                ZStack {
                    Rectangle()
                        .frame(width: 230, height: 140)
                        .foregroundColor(.orangeEdu)
                        .clipShape(RoundedRectangle(cornerRadius: 16.0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 16.0)
                                .stroke(Color.orangeEdu, lineWidth: 2)
                        )
                    
                    VStack {
                        Rectangle()
                            .frame(width: 90, height: 50)
                            .foregroundColor(.yellowEdu)
                            .clipShape(.rect(topLeadingRadius: 0, bottomLeadingRadius: 16, bottomTrailingRadius: 0, topTrailingRadius: 16))
                            .offset(x: 70, y: -13)
                        
                        imageButton
                            .resizable()
                            .frame(width: 25, height: 25)
                            .offset(x: -40)
                        
                        Text(text)
                            .foregroundColor(.white)
                            .offset(x: 30)
                            .fontWeight(.semibold)
                            .font(.custom("SFPro-bold", size: 23))
                    }
            
            }
        }
    }
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("backgroundBase")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                
                VStack{
                    Text("Anglais")
                        .fontWeight(.medium)
                        .bold()
                        .font(.custom("SFPro-bold", size: 30))
                        .padding(.bottom, 580)
                }
                
                    VStack{
                        NavigationLink(destination: EnglishVid()){
                            OrangeBigButton2(text: "Cours", imageButton: Image(systemName: "folder"))
                                .padding(.top, 10)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: MathsExo()){
                            OrangeBigButton2(text: "Exercices", imageButton: Image(systemName: "folder"))
                                .padding(.top, 10)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: LitView()){
                            OrangeBigButton2(text: "Corrigés", imageButton: Image(systemName: "folder"))
                                .padding(.top, 10)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.top, 30)
                }
            }
        }
    }
    


#Preview {
    MathsRess()
}
