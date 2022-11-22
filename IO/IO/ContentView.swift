//
//  ContentView.swift
//  IO
//
//  Created by Daniele Patrizio on 20/11/22.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var selection = 0
   
       
   
    var body: some View {
        
        TabView(selection: $selection){
            
            Text("home tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem{
                    Image(systemName: "message.fill")
                    Text("Messaggi")
                    
                    
                }
            Text("")
                .tabItem{
                    Image(systemName: "creditcard")
                    Text("Portafoglio")
                    
                    
                }
            Servizi()
            
                .tabItem{
                     Image(systemName:  "wrench.and.screwdriver.fill")
                    Text("Servizi")
                    
                    
                }
            
            
ProfileView()
                .tabItem{
                    Image(systemName:"person")
                    Text("Profilo")
                    
                }
            
        }.onAppear{
            UITabBar.appearance().backgroundColor = .white
        }
            
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
