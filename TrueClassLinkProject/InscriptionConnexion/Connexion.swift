// Connexion.swift
import SwiftUI

struct Connexion: View {
    
    @ObservedObject var user = User(email: "", mdp: "", name: "Temp", surname: "Temp")
    @State private var navigate = false
    @State private var showingAlert = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Image("backgroundBase")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea(.all)
                
                VStack{
                    HStack{
                        Text("Connexion")
                            .font(.title)
                            .padding(.top, 70)
                            .padding(.leading)
                            .offset(x:-100, y:30)
                    }
                    Spacer()
                    Spacer()
                    VStack{
                        TextFieldView(text: $user.email, title: "mail")
                        SecureFieldView(text: $user.mdp, title: "password")
                        CustomButton2(text: "Connexion", width: 150, height: 50, cornerRadius: 30, action: 
                                        {
                            if validateCredentials() {
                                // Trigger navigation
                                self.navigate = true
                            } else {
                                // Show an alert
                                self.showingAlert = true
                            }
                        }
                        )
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("Erreur"), message: Text("Veuillez entrer un email et un mot de passe valides"), dismissButton: .default(Text("OK")))
                        }
                        .padding()
                        .navigationDestination(isPresented: $navigate, destination: {
                            CourseChoice()})
                        
                    }
                    Spacer()
                    Spacer()
                    HStack{
                        Text("Mot de passe oublié ?")
                            .offset(x:90, y:-25)
                            .foregroundStyle(.greyEdu)
                    }
                    .padding()
                }
            }
        }
    }
    
    func validateCredentials() -> Bool {
        return !user.email.isEmpty && !user.mdp.isEmpty
    }
}

#Preview {
    Connexion()
}
