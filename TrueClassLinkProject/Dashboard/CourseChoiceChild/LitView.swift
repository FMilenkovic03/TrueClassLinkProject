//
//  PoetryView.swift
//  TrueClassLinkProject
//
//  Created by Apprenant65 on 14/03/2024.
//

import SwiftUI

struct LitView: View {
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("backgroundBase")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                
                VStack {
                    Text("Histoire littéraire")
                        .bold()
                        .font(.custom("SFPro-bold", size: 28))
                        .padding(.bottom, 530)
                }
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15.0)
                            .frame(width: 300, height: 70)
                            .foregroundStyle(.gray)
                            .contrast(7.3)
                        NavigationLink("Les mouvements littéraire", destination: WebView(url: URL(string: "https://www.etudes-litteraires.com/mouvements-litteraires/tableau")!))
                           // .padding(.top, 100)
                            .font(.custom("SFPro-bold", size: 22))
                            .foregroundStyle(.orangeEdu)
                    }
                    .padding(.bottom, 280 )
                }
            }
        }
    }
    
    struct LiView: View {
        let url: URL
        
        var body: some View {
            Text("WebView: \(url)")
        }
    }
}



#Preview {
    LitView()
}

