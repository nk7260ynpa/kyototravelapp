import SwiftUI

struct FestivalListView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.festivals) { festival in
                NavigationLink(destination: FestivalDetailView(festival: festival)) {
                    StyledListRow(
                        icon: "party.popper.fill",
                        title: festival.name,
                        subtitle: festival.date
                    )
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.kyotoBackground)
            .navigationTitle("慶典")
        }
    }
}

#Preview {
    FestivalListView()
        .preferredColorScheme(.dark)
}
