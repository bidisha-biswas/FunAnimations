import SwiftUI

struct AnimatingChevron: View {
    @State var strokeReset: Bool = true
    @State var startStroke: CGFloat = 0.0
    @State var endStroke: CGFloat = 0.0

    var body: some View {
        Chevron()
            .trim(from: startStroke, to: endStroke)
            .stroke(lineWidth: 5)
            .foregroundColor(.cyan)
            .padding(20)
            .onAppear() {
                Timer.scheduledTimer(withTimeInterval: 0.19, repeats:
                                        true) { timer in
                    if (endStroke >= 1) {
                        if (strokeReset) {
                            Timer.scheduledTimer(withTimeInterval: 0.6,
                                                 repeats: false) { _ in
                                endStroke = 0
                                startStroke = 0
                                strokeReset.toggle()
                            }
                            strokeReset = false
                        }
                    }
                    withAnimation(Animation.linear) {
                        endStroke += 0.12
                        startStroke = endStroke - 0.4
                    }
                }
            }
    }
}

struct AnimatingChevron_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingChevron()
    }
}
