import SwiftUI

struct AtheleteModalView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Binding var isPresented: Bool
    
    @Binding var listData: [Athlete]
    @State var nameText: String = ""
    @State var distanceText: String = ""
    @State var score: Double = 3
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Text("Name     ")
                        .monospacedDigit()
                        .padding()
                    TextField("Athlete Name", text: $nameText)
                        .textFieldStyle(.roundedBorder)
                        .padding(.trailing)
                }
                HStack {
                    Text("Distance")
                        .monospacedDigit()
                        .padding()
                    TextField("Distance", text: $distanceText)
                        .textFieldStyle(.roundedBorder)
                        .padding(.trailing)
                    Text("m")
                        .padding(.trailing)
                }
                HStack {
                    Text("Favorite").padding()
                    Spacer()
                    Text("\(Int(score))")
                        .padding(.trailing)
                }
                Slider(value: $score, in: 1...5, step: 1.0)
                    .padding(.horizontal)
                Spacer()
                VStack(alignment: .center) {
                    Button(action: {
                        isPresented = false
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Cancel")
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                    Button(action: {
                        let numberDistance = textToNumber(distanceText)
                        
                        listData.append(
                            Athlete(name: nameText, distance: numberDistance, score: Double(Int(score)))
                        )
                        
                        isPresented = false
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Confirm")
                            .frame(maxWidth: .infinity, maxHeight: 40)
                    }
                    .buttonStyle(.borderedProminent)
                }.padding()
            }
            .font(.title2)
            .navigationTitle("Add Item")
        }
    }
    
    func textToNumber(_ data: String) -> Int {
        if let tempData = Int(data) {
            return tempData
        }
        return 0
    }
}
