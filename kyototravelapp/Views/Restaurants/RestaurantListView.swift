import SwiftUI

struct RestaurantListView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.restaurants) { restaurant in
                NavigationLink(destination: RestaurantDetailView(restaurant: restaurant)) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(restaurant.name)
                            .font(.headline)
                        Text(restaurant.cuisineType.rawValue)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("餐廳")
        }
    }
}

#Preview {
    RestaurantListView()
}
