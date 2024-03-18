//
//  ProfessorStudent.swift
//  TrueClassLinkProject
//
//  Created by Apprenant98 on 12/03/2024.
//

import SwiftUI

struct ProfessorStudent: View {
    @State private var navigateToConnexion = false
    @State private var navigateToInscription = false
    @State private var isEleve = false
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
                    isEleve = false
                    navigateToInscription = true
                })
                .padding()
                .fullScreenCover(isPresented: $navigateToInscription, content: InscriptionConnexion.init)
                CustomButton2(text: "Elève", width: 200, height: 50, cornerRadius: 30, action: {
                    isEleve = true
                    navigateToInscription = true
                })
                .fullScreenCover(isPresented: $navigateToConnexion, content: Connexion.init)
            }
        }
    }
}

#Preview {
    ProfessorStudent()
}
