import SwiftUI

struct CutOutCornerRectangle: Shape {
    var cornerRadius: CGFloat = 0.0

    var animatableData: CGFloat {
        get { cornerRadius }
        set { cornerRadius = newValue }
    }

    // Drawing the rectangle
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let height = rect.height
        let width = rect.width

        path.move(to: CGPoint(x: cornerRadius, y: 0))
        path.addLine(to: CGPoint(x: width - cornerRadius, y: 0))

        path.addQuadCurve(to: CGPoint(x: width, y: cornerRadius),
                          control: CGPoint(x: width-cornerRadius, y: cornerRadius))

        path.addLine(to: CGPoint(x: width, y: height - cornerRadius))
        path.addQuadCurve(to: CGPoint(x: width - cornerRadius, y: height),
                          control: CGPoint(x: width - cornerRadius, y: height - cornerRadius))

        path.addLine(to: CGPoint(x: cornerRadius,
                                 y: height))
        path.addQuadCurve(to: CGPoint(x: 0, y: height-cornerRadius), control: CGPoint(x: cornerRadius, y: height - cornerRadius))

        path.addLine(to: CGPoint(x: 0, y: cornerRadius))
        path.addQuadCurve(to: CGPoint(x: cornerRadius, y: 0), control: CGPoint(x: cornerRadius, y: cornerRadius))

        return path
    }
}

struct CutOutCornerRectangle_Previews: PreviewProvider {
    static var previews: some View {
        CutOutCornerRectangle(cornerRadius: 60)
            .stroke(lineWidth: 3)
            .padding(.all)
    }
}
