//
//  UsersProfiles.swift
//  TrueClassLinkProject
//
//  Created by Apprenant 46 on 13/03/2024.
//


import Foundation

// pointsForts: [PointsForts.travailEquipe(name: "Travail en équipe"), PointsForts.sociable(name: "Sociable"), PointsForts.collaboration(name: "Collaboration")], pointsFaibles: [PointsFaibles.environnementDifficile(name: "Environnement"), PointsFaibles.manqueConfiance(name: "Manque de confiance")], Loisirs.socialNetwork(name: "Réseaux Sociaux", systemName: "point.3.filled.connected.trianglepath.dotted"), + mood + pp

var studentFakeProfile = Eleve(email: "annael.arzel@lyceejeanjaures.net", mdp: "random123", name: "Arzel", prenom: "Annaël", classe: Classes(name: "2de5"))

var teacherFakeProfile = Prof(email: "matthew.obrian@lyceejeanjaures.net", mdp: "random456", name: "O'Bryan", prenom: "Matthew", classesProf: [Classes(name: "2de3"), Classes(name: "2de5"), Classes(name: "2de7"), Classes(name: "1ère2"), Classes(name: "1ère5"), Classes(name: "Tle2")], discipline: [Discipline.français(name: "Français"), Discipline.anglais(name: "Anglais"), Discipline.latin(name: "Latin")])

                        
