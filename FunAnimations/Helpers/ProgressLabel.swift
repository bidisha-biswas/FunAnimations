import SwiftUI

struct ProgressLabel: View {
    let percentage: CGFloat

    var body: some View {
        Text("\(Int(percentage * 100)) %")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
}
