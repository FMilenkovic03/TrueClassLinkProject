//
//  InscriptionConnexion.swift
//  TrueClassLinkProject
//
//  Created by Apprenant98 on 12/03/2024.
//

import SwiftUI

struct InscriptionConnexion: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("connexionBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Text("ClassLink")
                        .foregroundStyle(.purpleEdu)
                        .font(.title)
                        .bold()
                        .padding(.bottom, 50) // Ajout de la marge inférieure
                    
                    CustomButton(text: "Inscription", width: 150, height: 50, cornerRadius: 5, destination: ProfessorStudent())
                    .padding()
                    
                    CustomButton(text: "Connexion", width: 150, height: 50, cornerRadius: 5, destination: ProfessorStudent())
                        .padding()
                }
            }
        }
    }
}


#Preview {
    InscriptionConnexion()
}
