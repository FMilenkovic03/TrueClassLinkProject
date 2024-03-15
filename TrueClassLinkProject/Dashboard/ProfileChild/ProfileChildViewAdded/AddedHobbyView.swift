//
//  AddedHobbiesView.swift
//  TrueClassLinkProject
//
//  Created by Apprenant 46 on 15/03/2024.
//

import SwiftUI

struct AddedHobbyView: View {
    @ObservedObject var eleve: Eleve
    @Binding var profileEditMode: Bool

    var body: some View {
        AddHobbiesIcon(profileEditMode: $profileEditMode, showingHobbiesList: false, eleve: eleve)
        ForEach(eleve.hobby, id: \.self) { hobby in
            if profileEditMode == false {
                VStack {
                    Image(systemName: hobby.hobbyIcon)
                        .foregroundStyle(.purpleEdu)
                    Text(hobby.hobbyName)
                        .fontWeight(.light)
                        .font(.caption2)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.purpleEdu)
                        .frame(width: 60)
                }
                .padding(.bottom, 10)
            } else {
                Button(action: {
                    _ = eleve.removeOne(removedHobby: hobby)
                }, label: {
                    ZStack {
                        VStack {
                            Image(systemName: hobby.hobbyIcon)
                                .foregroundStyle(.purpleEdu)
                            Text(hobby.hobbyName)
                                .fontWeight(.light)
                                .font(.caption2)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.purpleEdu)
                                .frame(width: 60)
                        }
                        .padding(.bottom, 10)
                        ZStack {
                            Circle()
                                    .frame(width: 30)
                                .foregroundStyle(.greyEdu)
                            Image(systemName: "xmark.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(.white)
                        }
                        .offset(x: 20, y: -20)
                            
                    }
                    
                })
            }
            }
    }
}

#Preview {
    AddedHobbyView(eleve: studentProfiles[0], profileEditMode: .constant(true))
}
