import SwiftUI

struct AttractionListView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.attractions) { attraction in
                NavigationLink(destination: AttractionDetailView(attraction: attraction)) {
                    StyledListRow(
                        icon: "building.columns.fill",
                        title: attraction.name,
                        subtitle: attraction.category.rawValue
                    )
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.kyotoBackground)
            .navigationTitle("景點")
        }
    }
}

#Preview {
    AttractionListView()
        .preferredColorScheme(.dark)
}
