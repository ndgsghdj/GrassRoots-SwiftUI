//
//  profilePage.swift
//  GrassRoots-SwiftUI
//
//  Created by LIN HOUCHENG ETHAN stu on 9/9/22.
//

import SwiftUI

struct profilePage: View {
    func checkPhone(phone : String) -> Bool{ // checks if phone number is valid, if not when exiting this page the value stored in firebase does not change
        for char in phone{
            if char != " " && (char.asciiValue! < 48 && char.asciiValue! > 57){
                return false
            }
        }
        return true
    }


    func checkPostal(residence : String) -> Bool{
        let data = residence.split(separator: ",")
        for char in data[data.count - 1]{
            if char != " " && (char.asciiValue! < 48 && char.asciiValue! > 57){
                return false
            }
        }
        return true
    }
    @State var changePass = false
    @State var userName = "jon123" //pull data from firebase
    @State var name = "Jonathan" //pull data from firebase
    @State var residence = "sunshine ave 3, 123456" //pull data from firebase
    @State var phone = "9050 1234" // pulldata from firebase

    

    var body: some View {
        VStack{
            Spacer().frame(height:0)
            
            ZStack{
                Image("upsideDown_semi").ignoresSafeArea()
                    
                VStack{
                    
                    Image("account_circle").ignoresSafeArea()
                    Text(userName)
                    Spacer().frame(height:10)
                }
            }
            Spacer().frame(height:50)


            ZStack{
                
                Image("yellow_tb").resizable().aspectRatio(contentMode: .fit)
                HStack{
                Spacer().frame(width:60)
                Text("Name: ")
                Spacer().frame(width:50)
                Text(name) // name
                Spacer().frame(width:50)
            }
                
            }
            Spacer().frame(height:20)
            ZStack{
                Image("yellow_tb").resizable().aspectRatio(contentMode: .fit)
            
            HStack{
                Spacer().frame(width:60)
                Text("Residence: ")
                Spacer().frame(width:50)
                TextField(residence, text : $residence)// residence, postal
                Spacer().frame(width:50)
                //Image("Pen").padding(/@START_MENU_TOKEN@/.all/@END_MENU_TOKEN@/).frame(width: 0.5, height: 0.5)
                //Spacer().frame(width:50)
            }
                
            }
            Spacer().frame(height:20)
            ZStack{
                Image("yellow_tb").resizable().aspectRatio(contentMode: .fit)
            HStack{
                Spacer().frame(width:60)
                Text("Phone: ")
                Spacer().frame(width:50)
                TextField("+65 " + phone, text : $phone)
                Spacer().frame(width:50)
                // residence, postal
                //Image("Pen").padding(/@START_MENU_TOKEN@/.all/@END_MENU_TOKEN@/).frame(width: 0.5, height: 0.5)
                //Spacer().frame(width:50)
            }
            
        }
        Spacer().frame(height:20)
                    ZStack{
                        Image("yellow_tb").resizable().aspectRatio(contentMode: .fit)
                    HStack{
                        Spacer().frame(width:60)
                        Text("Password: ")
                        Spacer().frame(width:50)
                        Button("***")
                               {changePass = true} // residence, postal
                        Spacer().frame(width:50)
                        //Image("Pen").padding(/@START_MENU_TOKEN@/.all/@END_MENU_TOKEN@/).frame(width: 0.5, height: 0.5)
                        //Spacer().frame(width:50)
                        
                    }
                        Spacer().frame(height:20)
                        
                    }
            
                }
                            }
                               }

struct profilePage_Previews: PreviewProvider {
    static var previews: some View {
        profilePage()
    }
}
