//
//  ContentView.swift
//  Custom View with SwiftUI WWDC 2019
//
//  Created by Heshan Yodagama on 2/12/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isOn: Bool = true
    var body: some View {
        VStack(spacing:  4) {
            ListCell()
            Toggle(isOn: $isOn) {
               Text("")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension VerticalAlignment{
    private enum StarAndAvacadoTitle: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.bottom]
        }
    }
    

    static let  midStarAndTitle = VerticalAlignment(StarAndAvacadoTitle.self)
}

struct ListCell: View {
    var body: some View {
        HStack(alignment:.midStarAndTitle) {
            VStack {
                HStack {
                    ForEach(0 ..< 5) { item in
                        Image(systemName: "star.fill").alignmentGuide(.midStarAndTitle) { (viewDimensions) -> CGFloat in
                            viewDimensions[.bottom]/2
                        }
                    }
                }
                Text("5 star")
            }
            
            VStack(alignment:.leading) {
                HStack {
                    Text("Avacado Toast")
                        .font(.title)
                        .alignmentGuide(.midStarAndTitle) { (viewDimensions) -> CGFloat in
                            viewDimensions[.bottom]/2
                    }
                    Spacer()
                    Image(systemName: "cloud.bolt.rain.fill")
                }
                Text("Ingredient: gjvj hb bhb hb jhb jhb jhb jhb jhbj jhb bjhb jhb jhb jhb hb jhbj hb jhbjhbjhbjhbjhbj bj jhb jhb jhb jhb jhbjhbj hb jhbjhb jhb jhbjh b jhb jbh")
                    .font(.caption).lineLimit(1)
            }
            
        }
    }
}
