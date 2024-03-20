//
//  DepartNavView.swift
//  TrueClassLinkProject
//
//  Created by Abdellah Skoundri on 20/03/2024.
//

import SwiftUI

struct DepartNavView: View {
    @StateObject var viewModel = MotivationViewModel()
    @State private var selection = 0
    @State private var shouldAnimateButton = false
    //    @State private var isPressed = false
    //    @State private var isHovered = false
    
    var body: some View {
        //        NavigationView {
        ZStack {
            Image("header")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Tes motivations")
                    .font(.custom("SF Pro", size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color.orangeEdu)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top,80)
                    .padding(30)
                
                TabView(selection: $selection) {
                    QuestionListView(viewModel: viewModel, selection: $selection)
                        .tag(0)
                    
                    DiagExpectations()
                        .tag(1)
                    DiagDifficulties()
                        .tag(2)
                    QuestionListView(viewModel: viewModel, selection: $selection)
                        .tag(1)
                }
                
                
                
                VStack {
                    
                    //                    Button(action: {
                    //                        if viewModel.validate() && selection < 2 {
                    //                            selection += 1
                    //                        }
                    //                        withAnimation {
                    //                            shouldAnimateButton.toggle()
                    //                        }
                    //                    }){
                    //                        
                    //                        Text("Valider")
                    //                            .font(.custom("SFPro-bold", size: 24))
                    //                            .foregroundColor(.white)
                    //                            .padding()
                    //                            .frame(width: 236, height: 60)
                    //                            .background(Color.orangeEdu)
                    //                            .cornerRadius(50)
                    //                            .offset(x: 0, y: -20)
                    //                    }
                    //                    .padding(.bottom)
                    //                    .frame(maxWidth: .infinity)
                    
                    HStack(spacing: 20) {
                        ForEach(0..<3) { index in
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(index == selection ? Color.orange : Color.gray)
                                .scaleEffect(index == selection ? 1.2 : 1.0, anchor: .center)
                                .animation(.easeInOut(duration: 0.5), value:selection)
                        }
                    }
                    .padding(.top, 20)
                    .offset(x: 0, y: -50)
                }
            }
        }
    }
}

#Preview {
    DepartNavView()
}

