import SwiftUI

struct CustomButton: View {
    var title: String
    let action: () -> ()

    var body: some View {
        Button {
            self.action()
        } label: {
          Text(title)
            .font(.subheadline)
            .fontWidth(.expanded)
        }
        .buttonStyle(.borderedProminent)
    }
}
