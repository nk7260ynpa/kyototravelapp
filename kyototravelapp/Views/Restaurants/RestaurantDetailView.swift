import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // 標題區塊
                VStack(spacing: 8) {
                    Image(systemName: "fork.knife")
                        .font(.system(size: 40))
                        .foregroundStyle(Color.kyotoAccent)
                    Text(restaurant.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.kyotoGold)
                    Text(restaurant.cuisineType.rawValue)
                        .font(.subheadline)
                        .foregroundStyle(Color.kyotoPurple)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)

                // 說明
                VStack(alignment: .leading, spacing: 8) {
                    Text("簡介")
                        .font(.headline)
                        .foregroundStyle(Color.kyotoGold)
                    Text(restaurant.description)
                        .foregroundStyle(Color.kyotoTextPrimary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.kyotoCardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 12))

                // 基本資訊
                VStack(alignment: .leading, spacing: 8) {
                    Text("基本資訊")
                        .font(.headline)
                        .foregroundStyle(Color.kyotoGold)
                    InfoRow(label: "地址", value: restaurant.address)
                    InfoRow(label: "營業時間", value: restaurant.openingHours)
                    InfoRow(label: "價位", value: restaurant.priceRange)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.kyotoCardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .background(Color.kyotoBackground)
        .navigationTitle(restaurant.name)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        RestaurantDetailView(restaurant: SampleData.restaurants[0])
    }
    .preferredColorScheme(.dark)
}
