import SwiftUI

struct AttractionDetailView: View {
    let attraction: Attraction

    var body: some View {
        List {
            Section {
                Text(attraction.description)
            }
            Section("基本資訊") {
                InfoRow(label: "類型", value: attraction.category.rawValue)
                InfoRow(label: "地址", value: attraction.address)
                InfoRow(label: "開放時間", value: attraction.openingHours)
                InfoRow(label: "門票", value: attraction.admissionFee)
            }
        }
        .navigationTitle(attraction.name)
    }
}

#Preview {
    NavigationStack {
        AttractionDetailView(attraction: SampleData.attractions[0])
    }
}
