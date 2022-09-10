//
//  ContentView2.0.swift
//  uitest
//
//  Created by CHEE WEN YONG stu on 10/9/22.
//

import SwiftUI
struct ContentView2_0: View {
    @State var raceAnswer = ""
    var body: some View {
        TextField("insert answer", text: $raceAnswer)
            .padding()
            .border(Color.black, width: 1)
            .textInputAutocapitalization(.none)
            .disableAutocorrection(true)
    }
}

struct ContentView2_0_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2_0()
    }
}
