//
//  List1.swift
//  List
//
//  Created by 常志平 on 15/9/22.
//

import SwiftUI

struct Ocean: Identifiable {
    let name: String
    let id = UUID()
}

private var oceans = [
    Ocean(name: "Pacific"),
    Ocean(name: "Atlantic"),
    Ocean(name: "Southern"),
    Ocean(name: "Indian"),
    Ocean(name: "Arctic")
]



struct List1: View {
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(oceans, selection: $multiSelection) {
                Text($0.name)
            }
            .navigationTitle("Ocean")
            .toolbar { EditButton() }
        }
        Text("\(multiSelection.count) selections")
    }
    
}

struct List1_Previews: PreviewProvider {
    static var previews: some View {
        List1()
    }
}
