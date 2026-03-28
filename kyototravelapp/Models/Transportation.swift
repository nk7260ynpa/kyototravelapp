import Foundation

struct TransportationMethod: Identifiable, Codable {
    let id: UUID
    let name: String
    let description: String
    let icon: String
}

struct TransportPass: Identifiable, Codable {
    let id: UUID
    let name: String
    let price: Int
    let validDuration: String
    let description: String
}

struct Station: Identifiable, Codable {
    let id: UUID
    let name: String
    let lines: [String]
    let isTransferStation: Bool
}
