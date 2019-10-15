//
//  ContentView.swift
//  Diogram
//
//  Created by Всеволод Андрющенко on 13.10.2019.
//  Copyright © 2019 Всеволод Андрющенко. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pikerItem = 0
    
    
    var date = [10, 56, 50]
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Statistic").font(.system(size: 32))
                Picker(selection: $pikerItem, label: Text("")) {
                    Text("September")
                    Text("October")
                    Text("Nocember")
                }.pickerStyle(SegmentedPickerStyle()).padding(.horizontal, 0)
                HStack(alignment: .top, spacing: 20) {
                    CircleDiogramView(progress: 0.7)
                    CircleDiogramView(progress: 0.7)
                }
                HStack(alignment: .top, spacing: 10) {
                    DiogrammView(value: 20, maxValue: 40)
                    DiogrammView(value: 46, maxValue: 50)
                }
            }
        }
    }
}

//Rectangle().frame(width: 200, height: 200)
//RoundedRectangle(cornerRadius: 25, style: //.circular).fill(Color.red).frame(width: 200, height: 200)
//Capsule().fill(Color.green).frame(width: 50, height: 200)
//Ellipse().fill(Color.white).frame(width: 50, height: 100)
//Circle().fill(Color.yellow).frame(width: 50)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
