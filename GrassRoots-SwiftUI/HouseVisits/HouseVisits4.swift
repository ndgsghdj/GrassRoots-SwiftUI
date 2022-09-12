//
//  HouseVisits4.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 11/9/22.
//

import SwiftUI

struct HouseVisits4: View {
    @State var SeniorName = ""
    @State var SeniorAge = ""
    @State var SeniorComments = ""
    var body: some View {
        NavigationView{
            VStack(){
                Group{
                    HStack(){
                        Spacer()
                        Text("Seniors ")
                            .bold()
                            .navigationBarTitle("New Report (pg4/7)", displayMode: .inline)
                            .font(.title)
                        Spacer()
                    }
                    HStack(){
                        Text("Name of Senior: ")
                            .padding()
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $SeniorName)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("Age of Senior: ")
                        padding()
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $SeniorAge)
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
                        TextField("Insert Response", text: $SeniorComments)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(destination: HouseVisits5()) {
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

struct HouseVisits4_Previews: PreviewProvider {
    static var previews: some View {
        HouseVisits4()
    }
}
