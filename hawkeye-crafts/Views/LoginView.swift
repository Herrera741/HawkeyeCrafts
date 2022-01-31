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
    @State private var isSecured = true
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        
        ZStack(alignment: .center) {
            LinearGradient(gradient: Gradient(colors:
                                                [Color("hc-blue"), .white, Color("hc-pink")]),
                startPoint: .top,
                endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Image("hc-print-logo2")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color("hc-brown2"), lineWidth: 5))
                    .padding()
                    
                HStack {
                    TextField("Email", text: self.$email)
                        .frame(width: 315)
                        .padding(15)
                        .background(Color.white)
                        .cornerRadius(15.0)
                        .shadow(radius: 8)
                } // end email HStack
                .overlay(alignment: .trailing) {
                    Image(systemName: "envelope.fill")
                        .foregroundColor(Color.gray)
                        .scaleEffect(1.2)
                        .padding(.trailing, 17)
                } // end overlay


                HStack {
                    if isSecured {
                        SecureField("Password", text: self.$password)
                            .frame(width: 315)
                            .padding(15)
                                .background(Color.white)
                                .cornerRadius(15.0)
                            .shadow(radius: 8)
                    } else {
                        TextField("Password", text: self.$password)
                            .frame(width: 315)
                            .padding(15)
                                .background(Color.white)
                                .cornerRadius(15.0)
                            .shadow(radius: 8)
                    }
                    
                } // end password HStack
                .overlay(alignment: .trailing) {
                    Button(action: {
                        isSecured.toggle()
                    }, label: {
                        Image(systemName: self.isSecured ? "eye.slash" : "eye")
                            .accentColor(.gray)
                            .scaleEffect(1.2)
                            .padding(.trailing, 15)
                    })
                } // end overlay
                    
                Button(action: {
                    isLoggedIn.toggle()
                }, label: {
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
                } // end signup HStack
            } // end main VStack
            .offset(y: -30)
        
        } // end main ZStack
    } // end body
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isLoggedIn: .constant(false))
    }
}
