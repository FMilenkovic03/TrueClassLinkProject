//
//  ProfessorStudent.swift
//  TrueClassLinkProject
//
//  Created by Apprenant98 on 12/03/2024.
//

import SwiftUI

struct ProfessorStudent: View {
    @EnvironmentObject var userChoice: UserChoice
    @State private var navigate = false
    var hist: MessageHistorique
    var body: some View {
        ZStack{
            
            Image("connexionBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                Text("ClassLink")
                    .foregroundStyle(.purpleEdu)
                    .font(.title)
                    .bold()
                Spacer()
                    .frame(height: 50)
                CustomButton2(text: "Professeur", width: 200, height: 50, cornerRadius: 30, action: {
                    navigate = true
                })
                .padding()
                .fullScreenCover(isPresented: $navigate) {
                    if userChoice.didChooseInscription {
                        Inscription(hist: hist)
                    } else {
                        Connexion(eleveList: EleveList(), hist: hist)
                    }
                }
                CustomButton2(text: "Elève", width: 200, height: 50, cornerRadius: 30, action: {
                    navigate = true
                })
                .padding()
                .fullScreenCover(isPresented: $navigate) {
                    if userChoice.didChooseInscription {
                        Inscription(hist: hist)
                    } else {
                        Connexion(eleveList: EleveList(), hist: hist)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfessorStudent(hist: MessageHistorique()).environmentObject(UserChoice())
}
