//
//  NewPasswordView.swift
//  GrassRoots-SwiftUI
//
//  Created by Nikola Winata on 8/9/22.
//

import SwiftUI
import Firebase

struct NewPasswordView: View {
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var viewModel: UserViewModel

    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Text("Set a New Password")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            }
            .frame(width: 428, height: 90)
            Spacer()
            Form {
                Section(header: Text("New Password:")) {
                    TextField("Password", text: $email)
                        .textInputAutocapitalization(.none)
                        .disableAutocorrection(true)
                }
                
                Section(header: Text("Confirm Password")) {
                    SecureField("Password", text: $password)
                        .textInputAutocapitalization(.none)
                        .disableAutocorrection(true)
                }
                
            }
            .frame(width: 378, height: 316, alignment: .center)
            .cornerRadius(20)
            
            Spacer()
            Button {
                viewModel.signIn(email: email, password: password)
                
            } label: {
                Text("Confirm")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    
            }
            .padding()
            .frame(width: 316, height: 64, alignment: .center)
            .background(Color.beige)
            .cornerRadius(15)
        }
        .padding()
        .frame(width: .infinity, height: .infinity)
        
    }

}

struct NewPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        NewPasswordView()
    }
}
