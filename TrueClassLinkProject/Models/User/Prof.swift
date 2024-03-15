//
//  Prof.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation

enum Discipline: String{
    case svt = "SVT"
    case francais = "Français"
}

class Prof: User {
    var discipline: [Discipline]
    var classesProf: [Classes]
    //var enCeMoment: [String] = []
    
    init(email:String, mdp: String, name: String, surname: String, classesProf: [Classes], discipline: [Discipline]) {
        self.classesProf = classesProf
        self.discipline = discipline
        super.init(email: email, mdp: mdp, name: name, surname: surname)
    }
}
