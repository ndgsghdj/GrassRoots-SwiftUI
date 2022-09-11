//
//  HouseVisits2.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 11/9/22.
//

import SwiftUI

struct HouseVisits2: View {
    @State var childName = ""
    @State var childAge = ""
    @State var childSch = ""
    @State var childComments = ""
    var body: some View {
        NavigationView{
            VStack(){
                Group{
                    HStack(){
                        Spacer()
                        Text("Children ")
                            .bold()
                            .navigationBarTitle("New Report (pg2/7)", displayMode: .inline)
                            .font(.title)
                        Spacer()
                    }
                    HStack(){
                        Text("Name of Child: ")
                            .padding()
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $childName)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("Age of Child: ")
                        padding()
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $childAge)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("What school does the child go to?")
                            .padding()
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $childSch)
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
                        TextField("Insert Response", text: $childComments)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(destination: HouseVisits3()) {
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

struct HouseVisits2_Previews: PreviewProvider {
    static var previews: some View {
        HouseVisits2()
    }
}
