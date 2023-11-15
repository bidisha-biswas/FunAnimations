import SwiftUI

struct ProgressView: View {
    @State private var percent: CGFloat = 0

    var body: some View {
        VStack(spacing: 20) {
            Color.clear.overlay(Indicator(percentage: self.percent))

            HStack(spacing: 10) {
                CustomButton(title: "0% ") {
                    withAnimation(.easeInOut(duration: 1.0)) { self.percent = 0 }
                }

                CustomButton(title: "27 %") {
                    withAnimation(.easeInOut(duration: 1.0)) { self.percent = 0.27 }
                }

                CustomButton(title: "100 %") {
                    withAnimation(.easeInOut(duration: 1.0)) { self.percent = 1.0 }
                }
            }
        }
        .navigationBarTitle("Progress View")
        .font(.headline)
    }
}

struct Indicator: View {
    var percentage: CGFloat

    var body: some View {
        return Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [.blue, .pink, .green]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 150, height: 150)
            .modifier(PercentageIndicator(percentage: self.percentage))
    }
}

struct PercentageIndicator: AnimatableModifier {
    var percentage: CGFloat = 0

    var animatableData: CGFloat {
        get { percentage }
        set { percentage = newValue }
    }

    func body(content: Content) -> some View {
        content
            .overlay(ProgressViewArc(percentage: percentage).foregroundColor(.red))
            .overlay(ProgressLabel(percentage: percentage))
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
