//
//  Prof.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

enum Discipline{
    case français (name: String)
    case histoireGeo (name: String)
    case anglais (name: String)
    case allemand (name: String)
    case espagnol (name: String)
    case italien (name: String)
    case arabe (name: String)
    case ses (name: String)
    case maths (name: String)
    case physiqueChimie (name: String)
    case svt (name: String)
    case snt (name: String)
    case latin (name: String)
}

//Français (4 h), Histoire-géographie (3 h), Langues vivantes étrangères (LVA et LVB soit 5 h 30 pour l'ensemble), Sciences économiques et sociales (1 h 30), Mathématiques (4 h), Physique-chimie (3 h), Sciences de la vie et de la Terre (1 h 30), Éducation physique et sportive (2 h), Enseignement moral et civique (18 h annuelles), Sciences numériques et technologie (1 h 30).

class Prof: User {
    var discipline: [Discipline]
    var classesProf: [Classes]
    
    init(email:String, mdp: String, name: String, prenom: String, classesProf: [Classes], discipline: [Discipline]) {
        self.classesProf = classesProf
        self.discipline = discipline
        super.init(email: email, mdp: mdp, name: name, prenom: prenom)
    }
}
