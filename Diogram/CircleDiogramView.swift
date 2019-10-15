//
//  CircleShapes.swift
//  Diogram
//
//  Created by Всеволод Андрющенко on 14.10.2019.
//  Copyright © 2019 Всеволод Андрющенко. All rights reserved.
//

import SwiftUI

struct CircleShape: Shape {
    
    let progress: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width/2,
                    startAngle: .radians(1.5 * .pi),
                    endAngle: .init(radians: 2 * Double.pi * progress + 1.5 * Double.pi),
                    clockwise: false)
        return path
    }
}

struct CircleDiogramView: View {
    
    var progress: Double
    
    var body: some View {
        ZStack(alignment: .center){
            CircleShape(progress: 1.0).stroke(Color.gray, style: StrokeStyle(lineWidth: 20, lineCap: .butt, lineJoin: .round, miterLimit: 0, dash: [], dashPhase: 0))
            CircleShape(progress: progress).stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, lineJoin: .round, miterLimit: 0, dash: [], dashPhase: 0))
            Text(String(progress * 100)+" %").font(.largeTitle).fontWeight(.bold)
            }.frame(width: 150, height: 150).padding()
    }
}

struct CircleShapes_Previews: PreviewProvider {
    static var previews: some View {
        CircleDiogramView(progress: 0.6)
    }
}
