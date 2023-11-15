import SwiftUI

struct ChevronTimelineView: View {
    var body: some View {
        VStack {
            TimelineView(.animation(minimumInterval: 0.2)) { context in
                ChevronView(date: context.date)
                Text("\(context.date.description)")
            }
            .navigationTitle("Timeline view")
            .font(.headline)

            TimelineView(.periodic(from: .now, by: 1)) { context in
                ChevronView(date: context.date)
                Text("\(context.date.description)")
            }
            .navigationTitle("Timeline view")
            .font(.headline)

        }
    }
}

struct ChevronTimelineView_Previews: PreviewProvider {
    static var previews: some View {
        ChevronTimelineView()
    }
}
