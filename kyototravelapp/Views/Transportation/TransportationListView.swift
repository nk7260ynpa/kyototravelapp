import SwiftUI

struct TransportationListView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.transportationMethods) { method in
                NavigationLink(destination: TransportationDetailView(method: method)) {
                    Label {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(method.name)
                                .font(.headline)
                            Text(method.description)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                                .lineLimit(2)
                        }
                    } icon: {
                        Image(systemName: method.icon)
                    }
                }
            }
            .navigationTitle("交通")
        }
    }
}

#Preview {
    TransportationListView()
}
