//
//  PickerView.swift
//  IO
//
//  Created by Daniele Patrizio on 22/11/22.
//

import SwiftUI

struct PickerView: View {

    @State var pickerSelection = 0

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .blue
           UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
           UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.blue], for: .normal)
        UISegmentedControl.appearance().backgroundColor = .red

    }

    var body: some View {
        
        Picker(selection: $pickerSelection, label: Text("")) {
            
            Text("Active").tag(0).foregroundColor(Color.white)
            Text("Completed").tag(1)
        }.pickerStyle(SegmentedPickerStyle()).foregroundColor(Color.orange)
    }
    
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
