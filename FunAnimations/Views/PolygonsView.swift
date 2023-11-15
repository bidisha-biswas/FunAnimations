import SwiftUI

struct PolygonsView: View {
    @State private var sides: Double = 4
    @State private var scale: Double = 1.0

    var body: some View {
        let animation: Animation = Animation.easeInOut(duration: 1.0)

        VStack {
            Polygon(sides: sides, scale: scale)
                .stroke(Color.purple, lineWidth: 5)
                .frame(width: 350, height: 400)
                .border(Color.black)
                .padding()

            Text("\(Int(sides)) sides, \(String(format: "%.2f", scale as Double)) scale")

            HStack(spacing: 20) {
                CustomButton(title: "2") {
                    withAnimation(animation) {
                        self.sides = 2.0
                        self.scale = 0.5
                    }
                }

                CustomButton(title: "3") {
                    withAnimation(animation) {
                        self.sides = 3.0
                        self.scale = 1.0
                    }
                }

                CustomButton(title: "7") {
                    withAnimation(animation) {
                        self.sides = 7.0
                        self.scale = 1.0
                    }
                }

                CustomButton(title: "8") {
                    withAnimation(animation) {
                        self.sides = 8.0
                        self.scale = 0.5
                    }
                }

                CustomButton(title: "10") {
                    withAnimation(animation) {
                        self.sides = 10.0
                        self.scale = 1.0
                    }
                }
            }
        }
        .navigationBarTitle("Polygons")
    }
}

// Previews
struct PolygonsView_Previews: PreviewProvider {
    static var previews: some View {
        PolygonsView()
    }
}
