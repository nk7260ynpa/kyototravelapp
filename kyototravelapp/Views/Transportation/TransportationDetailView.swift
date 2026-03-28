import SwiftUI

struct TransportationDetailView: View {
    let method: TransportationMethod

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // 標題區塊
                VStack(spacing: 8) {
                    Image(systemName: method.icon)
                        .font(.system(size: 40))
                        .foregroundStyle(Color.kyotoAccent)
                    Text(method.name)
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
                    Text(method.description)
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
                    InfoRow(label: "類型", value: method.name)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.kyotoCardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .background(Color.kyotoBackground)
        .navigationTitle(method.name)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        TransportationDetailView(method: SampleData.transportationMethods[0])
    }
    .preferredColorScheme(.dark)
}
