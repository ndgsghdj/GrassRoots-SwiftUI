//
//  ContentView.swift
//  GrassRoots-SwiftUI
//
//  Created by Nikola Winata on 6/9/22.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Text("Sign In")
                .font(.system(size: 60))
                .fontWeight(.semibold)
            }
            .frame(width: 428, height: 72)
            Spacer()
            Form {
                Section(header: Text("Email:")) {
                    TextField("Email", text: $email)
                }
                
                Section(header: Text("Password:")) {
                    SecureField("Password", text: $password)
                }
                
            }
            .frame(width: 378, height: 316, alignment: .center)
            .cornerRadius(20)
            Button {
                
            } label: {
                Text("Forgot your Password?")
            }
            Spacer()
            Button {
                
            } label: {
                Text("Login")
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
