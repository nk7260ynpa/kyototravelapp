import SwiftUI

struct AttractionListView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.attractions) { attraction in
                NavigationLink(destination: AttractionDetailView(attraction: attraction)) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(attraction.name)
                            .font(.headline)
                        Text(attraction.category.rawValue)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("景點")
        }
    }
}

#Preview {
    AttractionListView()
}
