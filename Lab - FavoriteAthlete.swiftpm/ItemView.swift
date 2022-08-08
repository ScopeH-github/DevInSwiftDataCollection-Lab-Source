import SwiftUI

struct ItemView: View {
    var data: Athlete
    var body: some View {
        HStack {
            Image(systemName: "figure.walk.circle.fill")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .foregroundColor(.accentColor)
            VStack(alignment: .leading) {
                Text("\(data.name)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 7)
                    Text("\(data.distance) m")
            }
            .padding()
            Spacer()
            Text("⭐️ \(Int(data.score))")
        }.padding()
    }
}
