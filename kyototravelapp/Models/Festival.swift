import Foundation

struct Festival: Identifiable, Codable {
    let id: UUID
    let name: String
    let date: String
    let location: String
    let description: String
    let tips: String
}
