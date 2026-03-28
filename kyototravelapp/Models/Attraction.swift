import Foundation

enum AttractionCategory: String, Codable, CaseIterable {
    case temple = "寺廟"
    case shrine = "神社"
    case garden = "庭園"
    case other = "其他"
}

struct Attraction: Identifiable, Codable {
    let id: UUID
    let name: String
    let category: AttractionCategory
    let address: String
    let openingHours: String
    let admissionFee: String
    let description: String
}
