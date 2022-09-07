//
//  ContentView.swift
//  MaPals
//
//  Created by Zachary on 7/9/22.
//

import SwiftUI
import Firebase

      

struct ContentView: View {
    
    
    @State var email: String = ""
    @State var password: String = ""
    @State var loginSuccess = false
    @State var showSignUp = false
    @State var errorText = ""

    
    var body: some View {
        
        
       
        
        NavigationView{
            
            ZStack {
                
                Image("background").resizable(resizingMode: .stretch).ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    
                    Image("logo")
                    
                    Spacer()
                    
                    
                    
                    TextField("Enter Email", text: $email)
                        .frame(width: 250.0, height: 40.0)
                        .background(Color.gray.opacity(0.8).cornerRadius(10))
                        .foregroundColor(.red)
                        .font(.headline)
                        
            
                    SecureField("Enter Password", text: $password)
                        .frame(width: 250.0, height: 40.0)
                        .background(Color.gray.opacity(0.8).cornerRadius(10))
                        .foregroundColor(.red)
                        .font(.headline)
                    
                    
                    
                    
                    Spacer()
                    
                    
                    
                    
                    
                    Button {
                                    login()
                                } label: {
                                    Text("Sign in")
                                    .bold()
                                    .frame(width: 100, height: 50)
                                    .background(.thinMaterial)
                                    .cornerRadius(10)
                                }
                    
                    
                    
                    
                    if loginSuccess {
                                    Text("Login Successfully! ✅")
                                    .foregroundColor(.green)
                                } else {
                                    Text("Not Login Succeessfully Yet! ❌")
                                    .foregroundColor(.red)
                                }
                    

                                Spacer()
                                
                                // Button to show the sign up sheet
                                Button {
                                    showSignUp.toggle()
                                } label: {
                                    Text("Sign Up Here!")
                                }

                             }
                             .padding()
                             .sheet(isPresented: $showSignUp) {
                                 SignUpView()
                             }
                        
                        
                    
                    
                    
                    Spacer()
                    
                    
                    
                
                
            }
            .navigationTitle("Log In")
            
        }
        
        
        
    }
    
    func login() {
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    loginSuccess = false
                } else {
                    print("success")
                    loginSuccess = true
                }
            }
        }
    }






struct MapScreen: View {
    var body: some View {
        
        ZStack {
            
            Color.green.edgesIgnoringSafeArea(.all)
            
            
            Text("hello this is map screen")
            
        }.navigationTitle("Map")
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
