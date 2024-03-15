//
//  MathsQA.swift
//  TrueClassLinkProject
//
//  Created by Apprenant65 on 15/03/2024.
//

import SwiftUI

struct MathsQA: View {
    var body: some View {
        ZStack{
            Image("backgroundBase")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .scaledToFill()
        
            VStack{
                Text("Maths Q&A")
                    .bold()
                    .font(.custom("SFPro-bold", size: 33))
                    .padding(.bottom, 530)
                    .foregroundStyle(.orangeEdu)
            }
            
            VStack {
                ButtonAnswer(question: "Quand devons-nous rendre le DM ? \r", answer: "Dans 2 semaines, le 29 mars")
                    .frame(width: 330, height: 220)
                    .padding(.bottom, 130)
                
                
            }
        }
    }
        
        struct ButtonAnswer: View {
            let question: String
            let answer: String
            
            var body: some View {
                VStack {
                    Text(question)
                        .fontWeight(.bold) // Mettre uniquement la question en gras
                        .font(.system(size: 21))
                    Text(answer)
                        .font(.custom("SFPro-bold", size: 21))
                }
                .padding()
                .background(.greyEdu)
                .contrast(2.5)
                .foregroundColor(.black)
                .cornerRadius(10)
            }
        }
    }
    


#Preview {
    MathsQA()
}
