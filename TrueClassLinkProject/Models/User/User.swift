//
//  User.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

enum Loisirs { //ajout io
    case filmsSeries (name : String, systemName: String)
    case dramasAnime (name : String, systemName: String)
    case musicListen (name: String, systemName: String)
    case musicPlay (name: String, systemName: String)
    case musicSing (name: String, systemName: String)
    case draw (name: String, systemName: String)
    case goOut (name: String, systemName: String)
    case sport (name: String, systemName: String)
    case dance (name: String, systemName: String)
    case booksManga (name: String, systemName: String)
    case cook (name: String, systemName: String)
    case videoGames (name: String, systemName: String)
    case boardGames (name: String, systemName: String)
    case socialNetwork (name: String, systemName: String)
    case makeVideos (name: String, systemName: String)
}


enum Mood { //ajout io
    case angel (imageName: String)
    case angry (imageName: String)
    case badass (imageName: String)
    case jaded (imageName: String)
    case coffee (imageName: String)
    case demon (imageName: String)
    case love (imageName: String)
    case joyfull (imageName: String)
    case overwhelmed (imageName: String)
    case playfull (imageName: String)
    case sick (imageName: String)
    case sleepy (imageName: String)
    case smart (imageName: String)
    case surprise (imageName: String)
}

class User: ObservableObject {
    @Published var email: String
    @Published var mdp: String
    @Published var name: String
    @Published var prenom: String
    @Published var hobby: [Loisirs]?
    @Published var mood: Mood?
    @Published var profilePicture: String?
    @Published var enCeMoment: [String]?

    
    init(email:String,mdp: String, name: String, prenom: String) {
        self.email = email
        self.mdp = mdp
        self.name = name
        self.prenom = prenom
        self.hobby = []
    }
    
//    func creerUtilisateur(email: String, mdp: String, name: String, prenom: String) -> User? {
//        if email.isEmpty || mdp.isEmpty {
//            print("Veuillez remplir tous les champs.")
//            return nil
//        } else {
//            var newUser = User(email: email, mdp: mdp, name: name, prenom: prenom)
//            return newUser
//        }
//
//    }
    
}
