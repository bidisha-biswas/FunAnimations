import SwiftUI

struct ProgressViewArc: Shape {
    let percentage: CGFloat

    func path(in rect: CGRect) -> Path {

        var path = Path()

        path.addArc(center: CGPoint(x: rect.width / 2.0, y:rect.height / 2.0),
                    radius: rect.height / 2.0 + 5.0,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360.0 * Double(percentage)), clockwise: false)

        return path.strokedPath(.init(lineWidth: 10, dash: [6, 3], dashPhase: 10))
    }
}

// Previews
struct ProgressViewArc_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewArc(percentage: 1.0)
            .frame(width: 100, height: 200)
    }
}

