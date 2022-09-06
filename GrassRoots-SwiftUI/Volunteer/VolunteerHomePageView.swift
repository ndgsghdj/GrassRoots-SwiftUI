//
//  VolunteerHomePageView.swift
//  GrassRoots-SwiftUI
//
//  Created by Nikola Winata on 6/9/22.
//

import SwiftUI

struct VolunteerHomePageView: View {
    @State var username = "ndgsghdj"
    var body: some View {
        VStack {
            HStack {
                Text("Welcome, \(username)")
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
                    Text("New Report")
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
    }
}

struct VolunteerHomePageView_Previews: PreviewProvider {
    static var previews: some View {
        VolunteerHomePageView()
    }
}
