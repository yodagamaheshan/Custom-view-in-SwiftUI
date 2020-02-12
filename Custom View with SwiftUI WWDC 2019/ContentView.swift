//
//  ContentView.swift
//  Custom View with SwiftUI WWDC 2019
//
//  Created by Heshan Yodagama on 2/12/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                HStack {
                    ForEach(0 ..< 5) { item in
                        Image(systemName: "star.fill")
                    }
                }
                Text("5 star")
            }
            
            VStack(alignment:.leading) {
                HStack {
                    Text("Avacado Toast")
                        .font(.title)
                    Spacer()
                    Image(systemName: "cloud.bolt.rain.fill")
                }
                Text("Ingredient: gjvj hb bhb hb jhb jhb jhb jhb jhbj jhb bjhb jhb jhb jhb hb jhbj hb jhbjhbjhbjhbjhbj bj jhb jhb jhb jhb jhbjhbj hb jhbjhb jhb jhbjh b jhb jbh")
                    .font(.caption).lineLimit(1)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
