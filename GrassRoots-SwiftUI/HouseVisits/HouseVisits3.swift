//
//  HouseVisits3.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 11/9/22.
//

import SwiftUI

struct HouseVisits3: View {
    @State var IntellectuallyDisabledName = ""
    @State var IntellectuallyDisabledAge = ""
    @State var IntellectuallyDisabledComments = ""
    var body: some View {
        NavigationView{
            VStack(){
                Group{
                    HStack(){
                        Spacer()
                        Text("Intellectually Disabled ")
                            .bold()
                            .navigationBarTitle("New Report (pg3/7)", displayMode: .inline)
                            .font(.title)
                        Spacer()
                    }
                    HStack(){
                        Text("Name of Intellectually disabled: ")
                            .padding()
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $IntellectuallyDisabledName)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("Age of Intellectually disabled: ")
                        padding()
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $IntellectuallyDisabledAge)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("Comments: ")
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("Insert Response", text: $IntellectuallyDisabledComments)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(destination: HouseVisits4()) {
                            Text("Next")
                                .padding()
                        }
                    }
                    
                }
                Group{
                    
                }
                Spacer()
            }
        }
    }
}

struct HouseVisits3_Previews: PreviewProvider {
    static var previews: some View {
        HouseVisits3()
    }
}

