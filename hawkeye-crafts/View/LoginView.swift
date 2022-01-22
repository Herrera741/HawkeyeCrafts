//
//  LoginView.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 1/22/22.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        ZStack {

            Color("hc-pink")
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                
                Image("hc-print-logo")
                    .resizable()
                    .frame(width: 300, height: 250)
                
                TextField("Email", text: self.$email)
                    .frame(width: 315)
                    .padding(15)
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .shadow(radius: 8)

                SecureField("Password", text: self.$password)
                    .frame(width: 315)
                    .padding(15)
                        .background(Color.white)
                        .cornerRadius(15.0)
                        .shadow(radius: 8)
                
                Button(action: {}, label: {
                    Text("Login")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                            .cornerRadius(15.0)

                })
                    .padding(15)
                    .shadow(radius: 8)
                
                HStack {
                    Text("Don't have an account?")
                        .font(.title2)
                        .foregroundColor(Color.black)
                    Button(action: {}, label: {
                        Text("Sign Up")
                            .font(.title2)
                            .foregroundColor(Color.blue)
                    })
                }
            }
        
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
