//
//  NewReport2.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 10/9/22.
//

import SwiftUI

struct NewReport2: View {
    @State var residence = ""
    @State var postal = ""
    @State var road = ""
    @State var Block = ""
    @State var Unit = ""
    @State var MobileContact = ""
    @State var HomeContact = ""
    var body: some View {
        NavigationView{
            VStack{
                Group{
                    HStack(){
                        Text("New Report ")
                            .font(.title)
                            .bold()
                            .navigationBarTitle("New Report (pg2/3)", displayMode: .inline)
                        Spacer()
                    }
                    HStack(){
                        Text("Residence: ")
                            .font(.headline)
                            .padding()
                        Spacer()
                    }
                    HStack(){
                        TextField("insert answer", text: $residence)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("  Postal Code:")
                        Spacer()
                        Text("Road: ")
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $postal)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                        TextField("insert answer", text: $road)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("   Block No.")
                        Spacer()
                        Text("Unit No.")
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $Block)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                        TextField("insert answer", text: $Unit)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                 }
                Group{
                    HStack(){
                        Text("Contact Number (Mobile): ")
                        Spacer()
                    }
                    HStack(){
                        TextField("+65...", text: $MobileContact)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("Contact Number (Home): ")
                        Spacer()
                 }
                    HStack(){
                        TextField("insert answer", text: $HomeContact)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                             Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(destination: NewReport3().navigationTitle(Text("x"))
                                        .navigationBarHidden(true)) {
                            Text("Next")
                                .padding()
                                
                        }
                }
              }
            }
        }
    }

struct NewReport2_Previews: PreviewProvider {
    static var previews: some View {
        NewReport2()
    }
}
}
