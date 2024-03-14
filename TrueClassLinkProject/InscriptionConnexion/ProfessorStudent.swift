//
//  ProfessorStudent.swift
//  TrueClassLinkProject
//
//  Created by Apprenant98 on 12/03/2024.
//

import SwiftUI

struct ProfessorStudent: View {
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
                CustomButton(text: "Professeur", width: 30, height: 50, cornerRadius: 5, destination: Inscription())
                    .padding()
                CustomButton(text: "Elève", width: 30, height: 50, cornerRadius: 5, destination: Inscription())
            }
        }
    }
}

#Preview {
    ProfessorStudent()
}
