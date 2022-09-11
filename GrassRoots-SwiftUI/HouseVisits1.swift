//
//  HouseVisits1.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 11/9/22.
//

import SwiftUI

struct HouseVisits1: View {
    @State private var visitDate = Date()
    @State var lonelyresident = "Answer"
    @State var numResidence = ""
    @State var childBool = "Answer"
    @State var unintelligentbool = "Answer"
    @State var seniorbool = "Answer"
    @State var wheelchairbool = "Answer"
    var body: some View {
        NavigationView{
            VStack(){
                Group{
                    HStack(){
                        Text("House Visits ")
                            .bold()
                            .navigationBarTitle("New Report (pg1/7)", displayMode: .inline)
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    ZStack{
                        DatePicker("Date of House visit: ", selection: $visitDate,in: ...Date() , displayedComponents: .date)}
                    HStack(){
                        Text("Is the resident Living alone?:")
                        Spacer()
                    }
                    ZStack{
                        Image("TextFieldBackground")
                        Menu{
                            Button(action: {
                                lonelyresident = "Yes"
                            }, label: {
                                Text("Yes")
                            })
                            Button(action: {
                                lonelyresident = "No"
                            }, label: {
                                Text("No")
                            })
                        } label: {
                            Label(
                                title: {Text("\(lonelyresident)")}, icon: {Image(systemName: "plus")}
                                )
                         }
                        }
                    HStack(){
                        Text("Number of residents in the residence: ")
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $numResidence)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("Are there any children in the residence? ")
                        Spacer()
                    }
                    
                }
                Group{
                    ZStack{
                        Image("TextFieldBackground")
                        Menu{
                            Button(action: {
                                childBool = "Yes"
                            }, label: {
                                Text("Yes")
                            })
                            Button(action: {
                                childBool = "No"
                            }, label: {
                                Text("No")
                            })
                        } label: {
                            Label(
                                title: {Text("\(childBool)")}, icon: {Image(systemName: "plus")}
                                )
                         }
                        }
                    HStack(){
                        Text("Are there any intellectually disabled person?")
                        Spacer()
                    }
                    ZStack{
                        Image("TextFieldBackground")
                        Menu{
                            Button(action: {
                                unintelligentbool = "Yes"
                            }, label: {
                                Text("Yes")
                            })
                            Button(action: {
                                unintelligentbool = "No"
                            }, label: {
                                Text("No")
                            })
                        } label: {
                            Label(
                                title: {Text("\(unintelligentbool)")}, icon: {Image(systemName: "plus")}
                                )
                         }
                        }
                    HStack(){
                        Text("Are there any senior residents?")
                        Spacer()
                    }
                    ZStack{
                        Image("TextFieldBackground")
                        Menu{
                            Button(action: {
                                seniorbool = "Yes"
                            }, label: {
                                Text("Yes")
                            })
                            Button(action: {
                                seniorbool = "No"
                            }, label: {
                                Text("No")
                            })
                        } label: {
                            Label(
                                title: {Text("\(seniorbool)")}, icon: {Image(systemName: "plus")}
                                )
                         }
                        }
                    HStack(){
                        Text("Are there any wheelchair-bound person?")
                        Spacer()
                    }
                    ZStack{
                        Image("TextFieldBackground")
                        Menu{
                            Button(action: {
                                wheelchairbool = "Yes"
                            }, label: {
                                Text("Yes")
                            })
                            Button(action: {
                                wheelchairbool = "No"
                            }, label: {
                                Text("No")
                            })
                        } label: {
                            Label(
                                title: {Text("\(wheelchairbool)")}, icon: {Image(systemName: "plus")}
                                )
                         }
                        }
                    HStack{
                        Spacer()
                        NavigationLink(destination: HouseVisits2()) {
                            Text("Next")
                                .padding()
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct HouseVisits1_Previews: PreviewProvider {
    static var previews: some View {
        HouseVisits1()
    }
}
