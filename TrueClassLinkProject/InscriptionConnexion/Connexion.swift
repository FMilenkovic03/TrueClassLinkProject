//
//  Connexion.swift
//  TrueClassLinkProject
//
//  Created by Apprenant98 on 12/03/2024.
//

import SwiftUI

struct Connexion: View {
    
    @ObservedObject var user = User(email: "", mdp: "", name: "Temp", prenom: "Temp")
    
    var body: some View {
        ZStack{
            Image("backgroundBase")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Text("Connexion")
                        .font(.title)
                        .padding(.top, 70)
                        .padding(.leading)
                        .offset(x:-100, y:30)
                }
                Spacer()
                VStack{

                    TextFieldView(text: $user.email, title: "mail")
                    
                    SecureFieldView(text: $user.mdp, title: "password")
                }
                Spacer()
                Spacer()
                HStack{
                    Text("Mot de passe oublié ?")
                        .offset(x:90, y:-25)
                        .foregroundStyle(.greyEdu)
                }
                .padding()
            }
        }
    }
}

#Preview {
    Connexion()
}
