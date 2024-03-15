//
//  CoursView.swift
//  TrueClassLinkProject
//
//  Created by Apprenant65 on 13/03/2024.
//

import SwiftUI

struct CoursView: View {
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("backgroundBase")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                
                VStack{
                    Text("Français")
                        .bold()
                        .font(.custom("SFPro-bold", size: 28))
                        .padding(.bottom, 580)
                }
        
                VStack{
                    NavigationLink(destination: QuestionHistory()){
                        NonFilledOrangeButton(text: "Historique ", imageButton: Image(systemName: "doc.questionmark"))
                            .fontWeight(.semibold)
                            .font(.custom("SFPro-bold", size: 23))
                    }
                    .padding(.top, 10)
                    
                    NavigationLink(destination: RessourcesView()){
                        NonFilledOrangeButton(text: "Cours ", imageButton: Image(systemName: "book"))
                            .fontWeight(.semibold)
                            .font(.custom("SFPro-bold", size: 23))
                    }
                    .padding(.top, 10)
                    
                    NavigationLink(destination: SendMessage()){
                        NonFilledOrangeButton(text: "Message au prof ", imageButton: Image(systemName: "message.badge"))
                            .fontWeight(.semibold)
                            .font(.custom("SFPro-bold", size: 23))
                    }
                    .padding(.top, 10)
                    
                    NavigationLink(destination: FrenchQA()){
                        NonFilledOrangeButton(text: "Q&A ", imageButton: Image(systemName: "questionmark.bubble"))
                            .fontWeight(.semibold)
                            .font(.custom("SFPro-bold", size: 23))
                    }
                    .padding(.top, 10)
                    
                    NavigationLink(destination: Profile()){
                        NonFilledOrangeButton(text: "Profil de Mme Martin ", imageButton: Image(systemName: "person.crop.circle"))
                            .fontWeight(.light)
                            .fontWeight(.semibold)
                            .font(.custom("SFPro-bold", size: 23))
                    }
                    .padding(.top, 10)
                }
                .padding(.top, 70)
            }
        }
    }
}

#Preview {
    CoursView()
}
