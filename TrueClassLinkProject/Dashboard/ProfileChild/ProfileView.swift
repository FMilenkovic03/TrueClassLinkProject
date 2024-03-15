import SwiftUI

struct AnnaelStudentProfileView: View {
    @State var profileEditMode: Bool
    @State var profilePictureExists: Bool
    @ObservedObject var eleve: Eleve
    var ownProfile: Bool = true
    
    var body: some View {
        ZStack {
            Image("backgroundBase")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    ProfilePicture(profileEditMode: $profileEditMode, profilePictureExists: $profilePictureExists)
                    ProfileText()
                        .padding(.leading, 10)
                    if ownProfile == true {
                        ProfileEditButton(profileEditMode: $profileEditMode)
                            .padding(.leading, 35)
                        Spacer()
                    } else {
                        DMButton()
                            .padding(.leading, 35)
                        Spacer()
                    }
                } //Tête de profil
                .padding(.bottom, 50)
                
                Text("Loisirs")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.orangeEdu)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, -5)
                
                ZStack {
                    ProfileInfosRectangle()
                    if profileEditMode == true {
                        AddHobbiesIcon(profileEditMode: $profileEditMode, showingHobbiesList: false, eleve: eleve)
                    }
                    LazyVGrid(columns: Array(repeating: GridItem(), count: 3), spacing: 5) {
                        ForEach(eleve.hobby, id: \.self) { hobby in
                            AddedHobbyView(eleve: eleve, profileEditMode: $profileEditMode)
                            }
                            .padding(.bottom, 20)
    
}
}
                }
                
                
                                
    }
            }
       
        }
    


struct AnnaelStudentProfileView_Preview : PreviewProvider {
    static var previews: some View {
        AnnaelStudentProfileView(profileEditMode: true, profilePictureExists: true, eleve: studentProfiles[0])
    }
}



    
//VStack(alignment: .leading) { //page
//    HStack {
//        Spacer()
//        ProfilePicture(profileEditMode: $profileEditMode, profilePictureExists: $profilePictureExists)
//        ProfileText()
//            .padding(.leading, 10)
//        if ownProfile == true {
//            ProfileEditButton(profileEditMode: $profileEditMode)
//                .padding(.leading, 35)
//                Spacer()
//        } else {
//            DMButton()
//                .padding(.leading, 35)
//                Spacer()
//        }
//    } //bouton DM ou ProfileEdit
//    .padding(.top, 50)
//    .padding(.bottom, 30)
//
//    HStack {
//        Spacer()
//        VStack(alignment: .leading) {
//            Text("Loisirs")
//                .font(.title2)
//                .fontWeight(.semibold)
//                .foregroundStyle(.orangeEdu)
//                .padding(.bottom, -5)
//
//            ZStack {
//                ProfileInfosRectangle()
//                    LazyVGrid(columns: Array(repeating: GridItem(), count: 3), spacing: 5) {
//                        ForEach(studentProfiles[0].hobby ?? [], id: \.self) { hobby in
//                            VStack {
//                                Image(systemName: hobby.hobbyIcon)
//                                    .foregroundStyle(.purpleEdu)
//                                Text(hobby.hobbyName)
//                                    .fontWeight(.light)
//                                    .font(.caption2)
//                                    .multilineTextAlignment(.center)
//                                    .foregroundStyle(.purpleEdu)
//                                    .frame(width: 60)
//                            }
//                            .padding(.bottom, 20)
//                        }
//                        AddHobbiesIcon(profileEditMode: $profileEditMode, currentProfile: studentProfiles[0], showingHobbiesList: false)}
//            }
//            .padding(.bottom, 40)
//
//            VStack { //pour test si append() marche
//                ForEach(studentProfiles[0].hobby ?? [], id: \.self) { hobby in
//                    Text(hobby.hobbyName)}
//            }
//
//
//            Text("En ce moment ...")
//                .font(.title2)
//                .fontWeight(.semibold)
//                .foregroundStyle(.orangeEdu)
//            .padding(.bottom, -5)
//            ProfileInfosRectangle()
//        }
//        Spacer()
//    }
//
//        .padding(.bottom, 30)
//
//    Spacer()
//}
