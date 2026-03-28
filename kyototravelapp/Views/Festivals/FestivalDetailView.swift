import SwiftUI

struct FestivalDetailView: View {
    let festival: Festival

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // 標題區塊
                VStack(spacing: 8) {
                    Image(systemName: "party.popper.fill")
                        .font(.system(size: 40))
                        .foregroundStyle(Color.kyotoAccent)
                    Text(festival.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.kyotoGold)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)

                // 說明
                VStack(alignment: .leading, spacing: 8) {
                    Text("簡介")
                        .font(.headline)
                        .foregroundStyle(Color.kyotoGold)
                    Text(festival.description)
                        .foregroundStyle(Color.kyotoTextPrimary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.kyotoCardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 12))

                // 活動資訊
                VStack(alignment: .leading, spacing: 8) {
                    Text("活動資訊")
                        .font(.headline)
                        .foregroundStyle(Color.kyotoGold)
                    InfoRow(label: "日期", value: festival.date)
                    InfoRow(label: "地點", value: festival.location)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.kyotoCardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 12))

                // 觀賞建議
                VStack(alignment: .leading, spacing: 8) {
                    Text("觀賞建議")
                        .font(.headline)
                        .foregroundStyle(Color.kyotoGold)
                    Text(festival.tips)
                        .foregroundStyle(Color.kyotoTextPrimary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.kyotoCardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .background(Color.kyotoBackground)
        .navigationTitle(festival.name)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        FestivalDetailView(festival: SampleData.festivals[0])
    }
    .preferredColorScheme(.dark)
}
