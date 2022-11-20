//
//  Servizi.swift
//  IO
//
//  Created by Daniele Patrizio on 20/11/22.
//

import SwiftUI

struct Servizi: View {
    @State var segmentedChoise = 0

    var body: some View {
        NavigationStack{
            
            Spacer()
            
            Form{
                VStack{
                    Picker("", selection: $segmentedChoise){
                        
                        Text("Nazionali").tag(0)
                        Text("Locali").tag(1)
                        
                    }
                    
                    .pickerStyle(SegmentedPickerStyle())
                    
                }
                Section{
                    List{
                        DisclosureGroup("Servizi Ministeriali"){ Label("Servizi Ministeriali", systemImage: "person.text.rectangle")}
                        Label("Enti", systemImage: "person.2")
                        Label("Agenzie", systemImage: "building")
                        Label("Istituzioni Nazionali", systemImage: "flag")
                        Label("Dipartimento Politiche Giovanili", systemImage: "graduationcap")
                    }
                    
                }}.navigationTitle("Servizi")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing:
                                        HStack{
                  
                    Button(action: {
                        print("Action Clicked")
                    }){
                        Image(systemName: "questionmark.circle").imageScale(.large)
                    }
                })
                                    
                                    }    }
}

struct Servizi_Previews: PreviewProvider {
    static var previews: some View {
        Servizi()
    }
}
