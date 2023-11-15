import SwiftUI

struct CutoutCornerRects: View {

    @State var cornerRadius: CFloat = 0.0

    var body: some View {
        CutOutCornerRectangle(cornerRadius: CGFloat(self.cornerRadius))
            .fill(Color.pink)
            .onAppear{
                withAnimation (Animation.easeOut(duration: 0.5).repeatForever(autoreverses: true)) {
                    self.cornerRadius = 40.0
                }
            }
            .padding()
            .frame(width: 400, height: 300)
            .navigationTitle("Animatable data")
    }
}

struct CutoutCornerRects_Previews: PreviewProvider {
    static var previews: some View {
        CutoutCornerRects()
    }
}
