import SwiftUI

struct Chevron: Shape {

    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.addLines([
            CGPoint(x: 10, y:  10),
            CGPoint(x: rect.width - rect.width * 0.45, y: 10),
            CGPoint(x: rect.width, y: rect.height/2),
            CGPoint(x: rect.width - rect.width * 0.45, y: rect.height),
            CGPoint(x: 10, y: rect.height),
            CGPoint(x: rect.width * 0.45, y: rect.height/2)
        ])
        path.closeSubpath()

        return path
    }
}
