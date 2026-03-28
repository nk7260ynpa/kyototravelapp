import SwiftUI

struct RestaurantListView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.restaurants) { restaurant in
                NavigationLink(destination: RestaurantDetailView(restaurant: restaurant)) {
                    StyledListRow(
                        icon: "fork.knife",
                        title: restaurant.name,
                        subtitle: restaurant.cuisineType.rawValue
                    )
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.kyotoBackground)
            .navigationTitle("餐廳")
        }
    }
}

#Preview {
    RestaurantListView()
        .preferredColorScheme(.dark)
}
