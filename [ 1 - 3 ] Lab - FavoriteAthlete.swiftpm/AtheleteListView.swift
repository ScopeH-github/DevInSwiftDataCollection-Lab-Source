import SwiftUI

struct AthleteListView: View {
    @State var isPresnted = false
    @State var listItem = listOfAthlete
    var body: some View {
        NavigationView {
            List {
                ForEach(listItem) { item in
                    ItemView(data: item)
                }
            }
            .toolbar{
                Button(action: {
                    isPresnted = true
                }) {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $isPresnted) {
                    AtheleteModalView(isPresented: $isPresnted, listData: $listItem)
                }
            }
            .navigationTitle(Text("Athletes"))
        }
    }
}
