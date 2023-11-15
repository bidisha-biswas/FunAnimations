import SwiftUI

struct Polygon: Shape {
    var sides: Double
    var scale: Double

    var animatableData: AnimatablePair<Double, Double> {
        get { AnimatablePair(sides, scale) }
        set {
            sides = newValue.first
            scale = newValue.second
        }
    }

    func path(in rect: CGRect) -> Path {
        // length hypotenuse
        let hypotenuse = Double(min(rect.width, rect.height)) / 2.0 * scale

        // center coordinates
        let center = CGPoint(x: rect.width / 2.0, y: rect.height / 2.0)

        var path = Path()

        for side in 0..<Int(sides) {
            let angle = (Double(side) * (360.0 / sides)) * (Double.pi / 180)

            // Calculate vertex
            let vertex = CGPoint(x: center.x + CGFloat(cos(angle) * hypotenuse),
                                 y: center.y + CGFloat(sin(angle) * hypotenuse))

            if side == 0 {
                path.move(to: vertex) // move to first vertex
            } else {
                path.addLine(to: vertex) // draw line to next vertex
            }
        }

        // Drawing the polygon from a vertex instead of center so that we can close the path.
        path.closeSubpath()

        return path
    }
}


// Previews
struct Polygon_Previews: PreviewProvider {
    static var previews: some View {
        Polygon(sides: 4, scale: 1.0)
            .stroke(lineWidth: 5)
    }
}
