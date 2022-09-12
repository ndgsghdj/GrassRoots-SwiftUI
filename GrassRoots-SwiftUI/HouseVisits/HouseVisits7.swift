//
//  HouseVisits7.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 11/9/22.
//

import SwiftUI

struct HouseVisits7: View {
    @State var juniorContact = ""
    @State var juniorName = ""
    @State var juniorRemarks = ""
    var body: some View {
        NavigationView{
            VStack(){
                Group{
                    HStack(){
                        Spacer()
                        Text("")
                            .bold()
                            .navigationBarTitle("New Report (pg7/7)", displayMode: .inline)
                            .font(.title)
                        Spacer()
                    }
                    HStack(){
                        Text("Contact Number")
                        Spacer()
                    }
                    HStack(){
                        TextField("Insert Answer", text: $juniorContact)
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
                        TextField("insert answer", text: $juniorName)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                             Spacer()
                    }
                    HStack(){
                        Text("Remarks (Junior Volunteer): ")
                        Spacer()
                    }
                    HStack(){
                        TextField("insert answer", text: $juniorContact)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                             Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(destination: HouseVisitsSubmission()) {
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

struct HouseVisits7_Previews: PreviewProvider {
    static var previews: some View {
        HouseVisits7()
    }
}
