import SwiftUI

struct FestivalDetailView: View {
    let festival: Festival

    var body: some View {
        List {
            Section {
                Text(festival.description)
            }
            Section("活動資訊") {
                InfoRow(label: "日期", value: festival.date)
                InfoRow(label: "地點", value: festival.location)
            }
            Section("觀賞建議") {
                Text(festival.tips)
            }
        }
        .navigationTitle(festival.name)
    }
}

#Preview {
    NavigationStack {
        FestivalDetailView(festival: SampleData.festivals[0])
    }
}
