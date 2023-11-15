import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			List {
				NavigationLink {
                    CutoutCornerRects()
				} label: {
					Text("Animatable Data")
				}
                NavigationLink {
                    PolygonsView()
                } label: {
                    Text("Animatable Pair")
                }
				NavigationLink {
                    ChevronTimelineView()
				} label: {
					Text("Timeline view")
				}
                NavigationLink {
                    ProgressView()
                } label: {
                    Text("Animatable Modifier")
                }
                NavigationLink {
                    ScaleMovement()
                } label: {
                    Text("Geometry Effect")
                }
			}
			.navigationTitle("Animation Types")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
