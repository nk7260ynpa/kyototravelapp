import Foundation

enum CuisineType: String, Codable, CaseIterable {
    case kaiseki = "懷石料理"
    case matcha = "抹茶甜點"
    case ramen = "拉麵"
    case tofu = "豆腐料理"
    case obanzai = "おばんざい"
    case other = "其他"
}

struct Restaurant: Identifiable, Codable {
    let id: UUID
    let name: String
    let cuisineType: CuisineType
    let address: String
    let openingHours: String
    let priceRange: String
    let description: String
}
