//
//  HouseVisits5.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 11/9/22.
//

import SwiftUI

struct HouseVisits5: View {
    @State var WheelChairName = ""
    @State var WheelChairAge = ""
    @State var WheelChairComments = ""
    var body: some View {
        NavigationView{
            VStack(){
                Group{
                    HStack(){
                        Spacer()
                        Text("Seniors ")
                            .bold()
                            .navigationBarTitle("New Report (pg5/7)", displayMode: .inline)
                            .font(.title)
                        Spacer()
                    }
                    HStack(){
                        Text("Name of Wheel-Chair Bound Person: ")
                            .padding()
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $WheelChairName)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack(){
                        Text("Age of Wheel-Chair bound person: ")
                        padding()
                        Spacer()
                    }
                    HStack(){
                        Spacer()
                        TextField("insert answer", text: $WheelChairAge)
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
                        TextField("Insert Response", text: $WheelChairComments)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(destination: HouseVisits6()) {
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

struct HouseVisits5_Previews: PreviewProvider {
    static var previews: some View {
        HouseVisits5()
    }
}
