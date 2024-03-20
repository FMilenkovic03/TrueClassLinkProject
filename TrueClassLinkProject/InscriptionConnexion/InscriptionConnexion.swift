//
//  InscriptionConnexion.swift
//  TrueClassLinkProject
//
//  Created by Apprenant98 on 12/03/2024.
//

import SwiftUI

class UserChoice: ObservableObject {
    @Published var didChooseInscription: Bool = false
}

struct InscriptionConnexion: View {
    @EnvironmentObject var userChoice: UserChoice
    @State private var navigateToProfessorStudent = false
    var hist: MessageHistorique
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
                    
                    CustomButton2(text: "Inscription", width: 200, height: 50, cornerRadius: 30, action: {
                        userChoice.didChooseInscription = true
                        navigateToProfessorStudent = true
                    })
                    .padding()
                    .fullScreenCover(isPresented: $navigateToProfessorStudent) {
                        ProfessorStudent(hist: hist, mess: Message(auteur: User(email: "", mdp: "", name: "", surname: "", mood: Mood(moodIcon: ""), enCeMoment: EnCeMoment(myMusic: "", myPride: "", myChallenge: "")), destinaire: User(email: "", mdp: "", name: "", surname: "", mood: Mood(moodIcon: ""), enCeMoment: EnCeMoment(myMusic: "", myPride: "", myChallenge: "")), typeQuestion: .poserQuest, message: ""))
                            .environmentObject(userChoice)
                    }
                    CustomButton2(text: "Connexion", width: 200, height: 50, cornerRadius: 30, action: {
                        userChoice.didChooseInscription = false
                        navigateToProfessorStudent = true
                    })
                    .padding()
                    .fullScreenCover(isPresented: $navigateToProfessorStudent) {
                        ProfessorStudent(hist: hist, mess: Message(auteur: User(email: "", mdp: "", name: "", surname: "", mood: Mood(moodIcon: ""), enCeMoment: EnCeMoment(myMusic: "", myPride: "", myChallenge: "")), destinaire: User(email: "", mdp: "", name: "", surname: "", mood: Mood(moodIcon: ""), enCeMoment: EnCeMoment(myMusic: "", myPride: "", myChallenge: "")), typeQuestion: .poserQuest, message: ""))
                            .environmentObject(userChoice)
                    }
                }
            }
        }
    }
}

#Preview {
    InscriptionConnexion(hist: MessageHistorique()).environmentObject(UserChoice())
}
