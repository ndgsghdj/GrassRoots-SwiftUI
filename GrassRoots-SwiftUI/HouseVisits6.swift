//
//  HouseVisits6.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 11/9/22.
//

import SwiftUI

struct HouseVisits6: View {
    @State var profContact = ""
    @State var profName = ""
    @State var profRemarks = ""
    var body: some View {
        NavigationView{
            VStack(){
                Group{
                    HStack(){
                        Spacer()
                        Text("")
                            .bold()
                            .navigationBarTitle("New Report (pg6/7)", displayMode: .inline)
                            .font(.title)
                        Spacer()
                    }
                    HStack(){
                        Text("Contact Number")
                        Spacer()
                    }
                    HStack(){
                        TextField("Insert Answer", text: $profContact)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                             Spacer()
                    }
                    HStack(){
                        Text("Name: ")
                        Spacer()
                    }
                    HStack(){
                        TextField("insert answer", text: $profName)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                             Spacer()
                    }
                    HStack(){
                        Text("Remarks(Professional): ")
                        Spacer()
                    }
                    HStack(){
                        TextField("insert answer", text: $profRemarks)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                             Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(destination: HouseVisits7()) {
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

struct HouseVisits6_Previews: PreviewProvider {
    static var previews: some View {
        HouseVisits6()
    }
}
