//
//  ProfileInfosRectangleView.swift
//  TrueClassLinkProject
//
//  Created by Apprenant 46 on 15/03/2024.
//

import SwiftUI

struct ProfileInfosRectangle: View {
    let numberOfIcons = 3 // Data : Remplacer par le nombre de loisirs
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .frame(width: 330, height: 1)
                .padding(.bottom, 5)
                .foregroundStyle(.purpleEdu)
            if numberOfIcons <= 3 {
                ZStack {
                    RoundedRectangle(cornerRadius: 15.0)
                        .frame(width: 330, height: 110)
                        .foregroundStyle(.greyEdu)
                    .opacity(0.2)
                }
            } else if numberOfIcons > 3 {
                ZStack {
                    RoundedRectangle(cornerRadius: 15.0)
                        .frame(width: 330, height: 220)
                        .foregroundStyle(.greyEdu)
                        .opacity(0.2)
                }
            }
        }
    }
}


#Preview {
    ProfileInfosRectangle()
}
