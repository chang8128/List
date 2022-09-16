//
//  List2.swift
//  List
//
//  Created by 常志平 on 16/9/22.
//

import SwiftUI

struct List2: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                BookDetail()
            } label: {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.blue)
            }
            .navigationTitle("This is a test")
        }
    }
}

struct List2_Previews: PreviewProvider {
    static var previews: some View {
        List2()
    }
}
