//
//  JaggedWaveShape.swift
//  FoodUIApps
//
//  Created by Iqbal Alhadad on 21/06/26.
//

import SwiftUI

struct JaggedWaveShape: Shape {
   // var isBottom: Bool
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let waveHeight:CGFloat = 5
        let waveWidth: CGFloat = rect.width / 6
        let waveYOffset: CGFloat = 30
        
        // if isBottom {
        //top left
        path.move(to: CGPoint(x: 0, y: 0))
        //top right
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        //bottom right
        path.addLine(to: CGPoint(x: rect.width, y: rect.height - waveYOffset))
        
        //jagged wave effect at the bottom
        path.addLine(to: CGPoint(x: rect.width - waveWidth, y: rect.height - waveYOffset - waveHeight))
        path.addLine(to: CGPoint(x:rect.width - (waveWidth * 2), y: rect.height - waveYOffset))
        path.addLine(to: CGPoint(x: rect.width - (waveWidth * 3), y: rect.height - waveYOffset - waveHeight))
        path.addLine(to: CGPoint(x:rect.width - (waveWidth * 4), y: rect.height - waveYOffset))
        path.addLine(to: CGPoint(x: rect.width - (waveWidth * 5), y:rect.height - waveYOffset - waveHeight))
        path.addLine(to: CGPoint(x:0, y: rect.height - waveYOffset))
        path.closeSubpath()
        return path
        
        //        } else {
        //            //jagged wave effect at the top
        //            path.move(to: CGPoint(x:0, y: waveYOffset))
        //            path.addLine(to: CGPoint(x: waveWidth, y: waveYOffset - waveHeight))
        //            path.addLine(to: CGPoint(x: waveWidth * 2, y:waveYOffset))
        //            path.addLine(to: CGPoint(x: waveWidth * 3, y: waveYOffset - waveHeight))
        //            path.addLine(to: CGPoint(x: waveWidth * 4, y: waveYOffset))
        //            path.addLine(to: CGPoint(x: waveWidth * 5, y: waveYOffset - waveHeight))
        //            path.addLine(to: CGPoint(x: rect.width, y: waveYOffset))
        //            //bottom right
        //            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        //            //bottom left
        //            path.addLine(to: CGPoint(x:0 , y: rect.height))
        //            
        //        }
    }
}
