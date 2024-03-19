////
////  MathsView.swift
////  TrueClassLinkProject
////
////  Created by Apprenant65 on 15/03/2024.
////
//
//import SwiftUI
//
//struct MathsView: View {
//    var body: some View {
//        NavigationStack{
//            ZStack{
//                Image("backgroundBase")
//                    .resizable()
//                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                    .scaledToFill()
//                
//                VStack{
//                    Text("Maths")
//                        .bold()
//                        .font(.custom("SFPro-bold", size: 28))
//                        .padding(.bottom, 580)
//                }
//        
//                VStack{
//                    NavigationLink(destination: QuestionHistory()){
//                        NonFilledOrangeButton(text: "Historique ", imageButton: Image(systemName: "doc.questionmark"))
//                            .fontWeight(.semibold)
//                            .font(.custom("SFPro-bold", size: 23))
//                    }
//                    .padding(.top, 10)
//                    
//                    NavigationLink(destination: MathsRess()){
//                        NonFilledOrangeButton(text: "Cours ", imageButton: Image(systemName: "book"))
//                            .fontWeight(.semibold)
//                            .font(.custom("SFPro-bold", size: 23))
//                    }
//                    .padding(.top, 10)
//                    
//                    NavigationLink(destination: SendMessage()){
//                        NonFilledOrangeButton(text: "Message au prof ", imageButton: Image(systemName: "message.badge"))
//                            .fontWeight(.semibold)
//                            .font(.custom("SFPro-bold", size: 23))
//                    }
//                    .padding(.top, 10)
//                    
//                    NavigationLink(destination: MathsQA()){
//                        NonFilledOrangeButton(text: "Q&A ", imageButton: Image(systemName: "questionmark.bubble"))
//                            .fontWeight(.semibold)
//                            .font(.custom("SFPro-bold", size: 23))
//                    }
//                    .padding(.top, 10)
//                    
//                    NavigationLink(destination: Profile()){
//                        NonFilledOrangeButton(text: "Profil de \rMme Pavlenko ", imageButton: Image(systemName: "person.crop.circle"))
//                            .fontWeight(.light)
//                            .fontWeight(.semibold)
//                            .font(.custom("SFPro-bold", size: 23))
//                            .multilineTextAlignment(.leading)
//                    }
//                    .padding(.top, 10)
//                }
//                .padding(.top, 70)
//            }
//        }
//    }
//}
//    
//
//
//#Preview {
//    MathsView()
//}
