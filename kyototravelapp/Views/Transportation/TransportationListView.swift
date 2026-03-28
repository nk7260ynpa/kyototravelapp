import SwiftUI

struct TransportationListView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.transportationMethods) { method in
                NavigationLink(destination: TransportationDetailView(method: method)) {
                    StyledListRow(
                        icon: method.icon,
                        title: method.name,
                        subtitle: method.description
                    )
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.kyotoBackground)
            .navigationTitle("交通")
        }
    }
}

#Preview {
    TransportationListView()
        .preferredColorScheme(.dark)
}
