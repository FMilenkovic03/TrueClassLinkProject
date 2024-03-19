////
////  RessourcesView.swift
////  TrueClassLinkProject
////
////  Created by Apprenant98 on 12/03/2024.
////
//
//import SwiftUI
//
//struct RessourcesView: View {
//    struct OrangeBigButton2: View, Identifiable  {
//        var id = UUID()
//        let text: String
//        let imageButton: Image
//        
//        var body: some View {
//                ZStack {
//                    Rectangle()
//                        .frame(width: 230, height: 140)
//                        .foregroundColor(.orangeEdu)
//                        .clipShape(RoundedRectangle(cornerRadius: 16.0))
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 16.0)
//                                .stroke(Color.orangeEdu, lineWidth: 2)
//                        )
//                    
//                    VStack {
//                        Rectangle()
//                            .frame(width: 90, height: 50)
//                            .foregroundColor(.yellowEdu)
//                            .clipShape(.rect(topLeadingRadius: 0, bottomLeadingRadius: 16, bottomTrailingRadius: 0, topTrailingRadius: 16))
//                            .offset(x: 70, y: 10)
//                        
//                        imageButton
//                            .resizable()
//                            .frame(width: 30, height: 30)
//                            .offset(x: -45)
//                        
//                        Text(text)
//                            .foregroundColor(.white)
//                            .offset(x: 30)
//                            .fontWeight(.semibold)
//                            .font(.custom("SFPro-bold", size: 23))
//                            .padding(.bottom, 15)
//                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
//                    }
//            
//            }
//        }
//    }
//    /* var array = [  OrangeBigButton(text: "Analyse de poème de Voltaire", imageButton: Image(systemName: "folder")),
//     OrangeBigButton(text: "Méthode de dissertation", imageButton: Image("folder")),
//     OrangeBigButton(text: "Histoire littéraire", imageButton: Image("folder"))
//     ]*/
//   
//    var body: some View {
//        NavigationStack{
//            ZStack{
//                Image("backgroundBase")
//                    .resizable()
//                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                    .scaledToFill()
//                
//                VStack{
//                    Text("Français")
//                        .fontWeight(.medium)
//                        .bold()
//                        .font(.custom("SFPro-bold", size: 30))
//                        .padding(.bottom, 580)
//                }
//                
//                    VStack{
//                        NavigationLink(destination: QuestionHistory()){
//                            OrangeBigButton2(text: "Analyse \r de poème", imageButton: Image(systemName: "folder"))
//                                .padding(.top, 10)
//                                .foregroundStyle(.white)
//                        }
//                        
//                        NavigationLink(destination: QuestionHistory()){
//                            OrangeBigButton2(text: "Méthode de \r dissertation", imageButton: Image(systemName: "folder"))
//                                .padding(.top, 10)
//                                .foregroundStyle(.white)
//                        }
//                        
//                        NavigationLink(destination: LitView()){
//                            OrangeBigButton2(text: "Histoire de \r la littérature", imageButton: Image(systemName: "folder"))
//                                .padding(.top, 10)
//                                .foregroundStyle(.white)
//                        }
//                    }
//                    .padding(.top, 30)
//                }
//            }
//        }
//    }
//
//
//#Preview {
//    RessourcesView()
//}
