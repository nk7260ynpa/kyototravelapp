import SwiftUI

struct AttractionDetailView: View {
    let attraction: Attraction

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // 標題區塊
                VStack(spacing: 8) {
                    Image(systemName: "building.columns.fill")
                        .font(.system(size: 40))
                        .foregroundStyle(Color.kyotoAccent)
                    Text(attraction.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.kyotoGold)
                    Text(attraction.category.rawValue)
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
                    Text(attraction.description)
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
                    InfoRow(label: "地址", value: attraction.address)
                    InfoRow(label: "開放時間", value: attraction.openingHours)
                    InfoRow(label: "門票", value: attraction.admissionFee)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.kyotoCardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .background(Color.kyotoBackground)
        .navigationTitle(attraction.name)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        AttractionDetailView(attraction: SampleData.attractions[0])
    }
    .preferredColorScheme(.dark)
}
