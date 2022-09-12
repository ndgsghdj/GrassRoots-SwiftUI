//
//  HouseVisitsSubmission.swift
//  GrassRoots-SwiftUI
//
//  Created by CHEE WEN YONG stu on 11/9/22.
//

import SwiftUI

struct HouseVisitsSubmission: View {
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Text("Response Recorded")
                NavigationLink(destination: HouseVisitsSubmission()) { //note that submissions is just a placeholder, please change the view once integrated
                    Text("Return Home")
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                Spacer()
            }
        }
    }
}

struct HouseVisitsSubmission_Previews: PreviewProvider {
    static var previews: some View {
        HouseVisitsSubmission()
    }
}
