//
//  ContentView.swift
//  IO
//
//  Created by Daniele Patrizio on 20/11/22.
//

import SwiftUI
import UIKit

struct ContentV: View {
    @State private var selection = 0
   
       
   
    var body: some View {
        
        TabView(selection: $selection){
            ProfileView()
                            .tabItem{
                                Image(systemName:"person")
                                Text("Profilo")
                                
          /*
                    
                    */
                }
            
            Servizi()
            
                .tabItem{
                     Image(systemName:  "wrench.and.screwdriver.fill")
                    Text("Servizi")
                    
                    
                }
            Text("")
                .tabItem{
                    Image(systemName: "creditcard")
                    Text("Portafoglio")
                    
                    
                }
            
Text("")
 .font(.system(size: 30, weight: .bold, design: .rounded))
 .tabItem{
     Image(systemName: "message.fill")
     Text("Messaggi")
                }
            
        }.onAppear{
            UITabBar.appearance().backgroundColor = .systemGray6
        }
            
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentV()
        }
    }
}
