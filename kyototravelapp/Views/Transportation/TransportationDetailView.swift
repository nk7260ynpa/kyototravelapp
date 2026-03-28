import SwiftUI

struct TransportationDetailView: View {
    let method: TransportationMethod

    var body: some View {
        List {
            Section {
                Text(method.description)
            }
            Section("基本資訊") {
                InfoRow(label: "類型", value: method.name)
                HStack {
                    Text("圖示")
                        .fontWeight(.medium)
                    Spacer()
                    Image(systemName: method.icon)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .navigationTitle(method.name)
    }
}

#Preview {
    NavigationStack {
        TransportationDetailView(method: SampleData.transportationMethods[0])
    }
}
