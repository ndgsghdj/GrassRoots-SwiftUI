//
//  NewPasswordView.swift
//  GrassRoots-SwiftUI
//
//  Created by Nikola Winata on 8/9/22.
//

import SwiftUI
import Firebase

struct ForgotPasswordView: View {
    @State var email = ""
    @State var password = ""
    @State private var showAlert = false
    @State private var errString: String?
    @EnvironmentObject var viewModel: UserViewModel

    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Text("Forgot Your Password?")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            }
            .frame(width: 428, height: 90)
            Spacer()
            Form {
                Section(header: Text("Email:")) {
                    TextField("Email", text: $email)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                }
                
            }
            .frame(width: 378, height: 316, alignment: .center)
            .cornerRadius(20)
            
            Spacer()
            Button {
                viewModel.resetPassword(email: email) { (result) in
                    switch result {
                    case .failure(let error):
                        self.errString = error.localizedDescription
                    case .success( _):
                        break
                    }
                    self.showAlert = true
                }
                
            } label: {
                Text("Reset Password")
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

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
