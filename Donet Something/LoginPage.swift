//
//  LoginPage.swift
//  Donet Something
//
//  Created by iPHTech 26 on 05/06/25.
//

import SwiftUI

struct LoginPage: View {
    @State private var inputuser = ""
    var body: some View {
        ZStack{
            VStack {
                HStack {
                    Button(action:{
                        
                    }){
                        Text("skip")
                    }
                }
           
                    Image("logo")
                        
                Text("Login in or Sign up")
                
                HStack(spacing: 20){
                    TextField("+91", text: $inputuser)
                        .frame(height: 50)
                        .border(.black)
                    
                    TextField("Name", text: $inputuser)
                        .padding()
                        .border()
                       
                       
                      
                }
               
                .padding()
                
            
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .ignoresSafeArea()
            
            Spacer()
        }
    }
}


struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
