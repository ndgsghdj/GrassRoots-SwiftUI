//
//  NewReport3.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 10/9/22.
//

import SwiftUI

struct NewReport3: View {
    @State var ResidentDetails = ""
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
                        Text("Remarks (Misecellaneous Details):")
                        Spacer()
                    }
                    HStack{
                        TextField("Extra remarks", text: $ResidentDetails)
                            .padding()
                            .border(Color.black, width: 1)
                            .textInputAutocapitalization(.none)
                            .disableAutocorrection(true)
                            Spacer()
                    }
                }
                Spacer()
            }
        }
    }
}

struct NewReport3_Previews: PreviewProvider {
    static var previews: some View {
        NewReport3()
    }
}
