//
//  ProfileView.swift
//  IO
//
//  Created by Daniele Patrizio on 22/11/22.
//

import SwiftUI
import UIKit
struct ProfileView: View {
    var body: some View {
        
        VStack{
            NavigationStack{
                ZStack{
                    
                    Image("Group")
                        .frame(maxWidth: 390, maxHeight: 50)
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(.vertical, 50)
                        .background(Color.systemGray5)
                        .cornerRadius(28)
                }
                Section{
                    List{
                        Label("I tuoi dati", systemImage: "person")
                            .padding()
                        Label("Preferenze", systemImage: "gear.circle")
                            .padding()
                        Label("Sicurezza", systemImage: "shield")
                            .padding()
                        Label("Privacy e Condizioni D'uso", systemImage: "lock")
                            .padding()
                        Label("Informazioni su IO", systemImage: "info")
                            .padding()
                        Label("Logout", systemImage: "figure.walk")
                            .padding()
                        
                    }.navigationTitle("Profilo")
                    
                    
                    
                     .navigationBarTitleDisplayMode(.inline)
                    
                    
                        .navigationBarItems(trailing:
                                                HStack{
                            
                            Button(action: {
                                print("")
                            }){
                                Image(systemName: "questionmark.circle").imageScale(.large)
                            }
                            
                        })
                    
                    //.listStyle(.plain)
                }//.background(.blue)
                //.scrollContentBackground(.hidden)
            }    }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
