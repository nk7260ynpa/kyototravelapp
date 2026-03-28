import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant

    var body: some View {
        List {
            Section {
                Text(restaurant.description)
            }
            Section("基本資訊") {
                InfoRow(label: "料理類型", value: restaurant.cuisineType.rawValue)
                InfoRow(label: "地址", value: restaurant.address)
                InfoRow(label: "營業時間", value: restaurant.openingHours)
                InfoRow(label: "價位", value: restaurant.priceRange)
            }
        }
        .navigationTitle(restaurant.name)
    }
}

#Preview {
    NavigationStack {
        RestaurantDetailView(restaurant: SampleData.restaurants[0])
    }
}
