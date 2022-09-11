//
//  NewReport1.swift
//  GrassRoots-SwiftUI
//
//  Created by CHEE WEN YONG stu on 11/9/22.
//

import SwiftUI

struct NewReport1: View {
    @State var insertAnswer = ""
    @State var choiceMade = "Options"
    @State var raceAnswer = ""
    @State var langSpoken = ""
    @State var raceAnswer = ""
    @State private var birthdate = Date()
    var body: some View {
        NavigationView{
            VStack(){
                Group{
                    HStack(){
                        Text("New Report ")
                            .font(.title)
                            .bold()
                            .navigationBarTitle("New Report 1 (pg1/3) ", displayMode: .inline)
                        Spacer()
                    }
                    HStack(){
                        Text("Name of resident : ")
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .padding()
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        TextField("insert answer", text: $insertAnswer)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack{
                        Text("Gender:")
                            .font(.headline)
                            .padding()
                        Spacer()
                    }
                    ZStack{
                        Image("TextFieldBackground")
                        Menu{
                            Button(action: {
                                choiceMade = "Male"
                            }, label: {
                                Text("Male")
                            })
                            Button(action: {
                                choiceMade = "Female"
                            }, label: {
                                Text("Female")
                            })
                        } label: {
                            Label(
                                title: {Text("\(choiceMade)")}, icon: {Image(systemName: "plus")}
                                )
                         }
                        }
                }
                Group{
                    ZStack{
                            DatePicker("Date of Birth: ", selection: $birthdate,in: ...Date() , displayedComponents: .date)}
                        .frame(height: 80.0)
                        
                    HStack{
                        Text(" Race: ")
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        TextField("insert answer", text: $raceAnswer)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                        Spacer()
                    }
                    HStack{
                        Text("Language spoken: ")
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        TextField("insert answer", text: $raceAnswer)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                        Spacer()
                    }
                }
                
                HStack{
                    Spacer()
                    NavigationLink(destination: NewReport2()) {
                        Text("Next")
                            .padding()
                    }
                }
                }
                Spacer()
      }
        }
 }


struct NewReport1_Previews: PreviewProvider {
    static var previews: some View {
        NewReport1()
    }
}
