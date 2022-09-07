//
//  ContentView.swift
//  MaPals
//
//  Created by Zachary on 7/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
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
                        
                        
                   
                    
                    TextField("Enter Password", text: $password)
                        .frame(width: 250.0, height: 40.0)
                        .background(Color.gray.opacity(0.8).cornerRadius(10))
                        .foregroundColor(.red)
                        .font(.headline)
                    
                    Spacer()
                    
                    Button(action: {
                        
                            },
                           
                    label: {
                        Text("Log In")
                            .padding(.vertical)
                            .frame(width: 70.0, height: 50.0)
                            .background(Color.brown.cornerRadius(10))
                            .foregroundColor(.white)
                            .font(.headline)
                        
                            })
                    Spacer()
                    
                }
                
            }
            .navigationTitle("Log In")
            
        }
        
        
        
    }
    
    func logIn() {
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
