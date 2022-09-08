//
//  AdminHomePageView.swift
//  GrassRoots-SwiftUI
//
//  Created by Nikola Winata on 8/9/22.
//

import SwiftUI

struct AdminHomePageView: View {
    var body: some View {
        TabView {
            VStack {
                HStack {
                    Text("Welcome, ndgsghdj")
                        .font(.system(size: 28))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                }
                .frame(width: 412, height: 64)
                .background(Color.beige)
                .cornerRadius(15)
                Spacer()
                    .frame(height: 50)
                HStack {
                    VStack {
                        Text("Accounts")
                            .fontWeight(.semibold)
                        Button {
                            
                        } label: {
                            Image("assignment")
                                .frame(width: 91.42, height: 84.82)
                        }
                        .padding()
                        .frame(width: 135.1, height: 135.1, alignment: .center)
                        .background(Color.beige)
                        .cornerRadius(15)
                    }
                    .padding()
                    Spacer()
                        .frame(width: 50)
                    VStack {
                        Text("Assignments")
                            .fontWeight(.semibold)
                        Button {
                            
                        } label: {
                            Image("assignment_ind")
                                .frame(width: 91.42, height: 84.82)
                        }
                        .padding()
                        .frame(width: 135.1, height: 135.1, alignment: .center)
                        .background(Color.beige)
                        .cornerRadius(15)
                    }
                    .padding()
                }
                Spacer()
            }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                }
        }
    }
}

struct AdminHomePageView_Previews: PreviewProvider {
    static var previews: some View {
        AdminHomePageView()
    }
}
