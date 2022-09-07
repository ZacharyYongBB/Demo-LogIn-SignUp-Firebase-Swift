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
                    
                    NavigationLink("Log In", destination: MapScreen())
                    
                    
                    Spacer()
                    
                    
                    
                }
                
            }
            .navigationTitle("Log In")
            
        }
        
        
        
    }
    
    func logIn() {
        
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
