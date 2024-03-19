//
//  CourseChoice.swift
//  TrueClassLinkProject
//
//  Created by Apprenant98 on 12/03/2024.
//

import SwiftUI

struct CourseChoice: View {
    var body: some View {
        NavigationStack{
                 ZStack{
                     Image("backgroundBase")
                         .resizable()
                         .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                         .scaledToFill()
                     
                     VStack{
                         Text("Mes cours")
                             .fontWeight(.medium)
                             .bold()
                             .font(.custom("SFPro-bold", size: 30))
                             .padding(.bottom, 580)
                     }
                     
                     VStack{
                         HStack{
                             Spacer()
//                             NavigationLink(destination: CoursView()){
//                                 OrangeBigButton(text: "Français", imageButton: Image("vector")
//                                 )}
                             Spacer()
                             
//                             NavigationLink(destination: AnglaisView()){
//                                 OrangeBigButton(text: "Anglais", imageButton: Image("vector")
//                                 )}
                             Spacer()
                         }
                         
                         HStack{
                             Spacer()
                             NavigationLink(destination: LitView()){
                                 OrangeBigButton(text: "Hist-Géo", imageButton: Image("vector")
                             )}
                            Spacer()
                             
//                             NavigationLink(destination: MathsView()){
//                                 OrangeBigButton(text: "Maths", imageButton: Image("vector")
//                                 )}
                             Spacer()
                         }
                         .padding(.top, 20)
                         
                         HStack{
                             Spacer()
                             NavigationLink(destination: LitView()){
                                 OrangeBigButton(text: "Eco-Gest", imageButton: Image("vector")
                                 )}
                             Spacer()
                             
                             NavigationLink(destination: LitView()){
                                 OrangeBigButton(text: "GRH", imageButton: Image("vector")
                                 )}
                             Spacer()
                         }
                         .padding(.top, 20)
                     }
                         .padding(.top, 50)
                     }
                 
                 }
             }
         }
    


#Preview {
    CourseChoice()
}
