//
//  SwiftUIView 2.swift
//  
//
//  Created by Moyses Miranda do Vale Azevedo on 17/04/23.
//

import SwiftUI
import CoreGraphics

struct NormalDistributionChart: View {
    let dataPoints: [CGPoint]

    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let maxX = CGFloat(dataPoints.count)
                let maxY = CGFloat(dataPoints.max(by: { $0.y < $1.y })?.y ?? 1)
                let scaleX = geometry.size.width / maxX
                let scaleY = geometry.size.height / maxY

                for (index, point) in dataPoints.enumerated() {
                    let x = CGFloat(index) * scaleX
                    let y = geometry.size.height - (point.y * scaleY)
                    let point = CGPoint(x: x, y: y)

                    if index == 0 {
                        path.move(to: point)
                    } else {
                        path.addLine(to: point)
                    }
                }
            }
            .stroke(Color.blue, lineWidth: 2)
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct NormalDistributionView: View {
    let dataPoints: [CGPoint] = {
        var points: [CGPoint] = []
        for x in stride(from: -3.0, through: 3.0, by: 0.1) {
            let y = exp(-(x * x) / 2) / sqrt(2 * .pi)
            points.append(CGPoint(x: x, y: y))
        }
        return points
    }()

    var body: some View {
        GeometryReader { frame in
            ZStack{
                NormalDistributionChart(dataPoints: dataPoints)
                    .frame(height: frame.size.height)
                VStack {
                    Spacer()
                        .frame(height: frame.size.height * 0.6)
                    Rectangle()
                        .fill(Color("White").opacity(0.60))
                        .frame(width: frame.size.width * 0.8, height: frame.size.height * 0.3)
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .shadow(color: Color.black.opacity(0.6), radius: 10, x: 0, y: 10)
                        .blur(radius: 2)
                        .overlay(
                            Text(TextEnum.normal.rawValue)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding()
                                .foregroundColor(Color("Black"))
                        )
                        .padding()
                    Spacer()
                        .frame(height: frame.size.height * 0.1)
                }
            }
        }
    }
}
