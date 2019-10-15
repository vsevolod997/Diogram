//
//  DiogrammView.swift
//  Diogram
//
//  Created by Всеволод Андрющенко on 14.10.2019.
//  Copyright © 2019 Всеволод Андрющенко. All rights reserved.
//

import SwiftUI

struct DiogrammView: View {
    
    var value: Double
    var maxValue: Double
    
    var body: some View {
        VStack{
            Text(String(maxValue))
            ZStack(alignment: .bottom){
                Rectangle().frame(width: 30, height: 200).foregroundColor(.gray)
                Rectangle().frame(width: 30, height: CGFloat((self.value * 200) / self.maxValue)).foregroundColor(.blue)
            }.padding(.top, 6)
            Text(String(value))
        }.padding(.horizontal, 16)
    }
}

struct DiogrammView_Previews: PreviewProvider {
    static var previews: some View {
        DiogrammView(value: 20, maxValue: 40)
    }
}
