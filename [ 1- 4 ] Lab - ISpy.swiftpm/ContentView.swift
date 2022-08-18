import SwiftUI

struct ContentView: View {
    @State var scale: CGFloat = 1
    var body: some View {
        ScrollView([.horizontal, .vertical]) {
            Image("Sample")
                .resizable()
                .scaleEffect(scale)
        }
        .gesture(MagnificationGesture()
            .onChanged {
                value in
                self.scale = value.magnitude
            }
            .onEnded { value in
                self.scale = value
            }
        )
    }
}
