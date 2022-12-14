//
//  ContentView.swift
//  List
//
//  Created by 常志平 on 15/9/22.
//

import SwiftUI

struct ContentView: View {
    struct Sea: Hashable, Identifiable {
        let name: String
        let id = UUID()
    }
    
    struct OceanRegion: Identifiable {
        let name: String
        let seas: [Sea]
        let id = UUID()
    }
    
    private let oceanRegions: [OceanRegion] = [
        OceanRegion(name: "Pacific",
                    seas: [Sea(name: "Australasian Mediterranean"),
                           Sea(name: "Philippine"),
                           Sea(name: "Coral"),
                           Sea(name: "South China")]),
        OceanRegion(name: "Atlantic",
                    seas: [Sea(name: "American Mediterranean"),
                           Sea(name: "Sargasso"),
                           Sea(name: "Caribbean")]),
        OceanRegion(name: "Indian",
                    seas: [Sea(name: "Bay of Bengal")]),
        OceanRegion(name: "Southern",
                    seas: [Sea(name: "Weddell")]),
        OceanRegion(name: "Arctic",
                    seas: [Sea(name: "Greenland")])
    ]
    
    @State private var singleSelection: UUID?
    
    var body: some View {
        NavigationView {
            List(selection: $singleSelection) {
                ForEach(oceanRegions) { region in
                    Section(header: Text("Major \(region.name) Ocean Seas")) {
                        ForEach(region.seas) { sea in
                            NavigationLink {
                                BookDetail()
                            } label: {
                                HStack {
                                    Image("zhongyangdiguodecaizhengmima")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .imageScale(.large)
                                        .foregroundColor(.accentColor)
                                    Text(sea.name)
                                }
                            }
                        }
                    }
                    
                }
            }
            .navigationTitle("Ocean and Seas")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
