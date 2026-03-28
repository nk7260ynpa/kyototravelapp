import SwiftUI

struct FestivalListView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.festivals) { festival in
                NavigationLink(destination: FestivalDetailView(festival: festival)) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(festival.name)
                            .font(.headline)
                        Text(festival.date)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("慶典")
        }
    }
}

#Preview {
    FestivalListView()
}
