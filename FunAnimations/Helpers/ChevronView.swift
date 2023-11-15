import SwiftUI

struct ChevronView: View {
    var date: Date = .distantPast
    @State var dashPhase: Double = 0

    var body: some View {
        let strokeStyle = StrokeStyle(lineWidth: 5,
                                      lineCap: .round,
                                      lineJoin: .round,
                                      dash: [50, 10, 20, 10, 20, 5, 10, 20, 5, 10],
                                      dashPhase: dashPhase)

        VStack(spacing: 10) {
            Chevron()
                .stroke(style: strokeStyle)
                .foregroundColor(.cyan)
                .padding(20)
                .onChange(of: date) { _ in
                    dashPhase += 8
                }
        }
    }
}

// MARK: = Previews

struct ChevronView_Previews: PreviewProvider {
    static var previews: some View {
        ChevronView()
    }
}
