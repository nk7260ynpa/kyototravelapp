import SwiftUI

struct InfoRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack {
            Text(label)
                .fontWeight(.medium)
                .foregroundStyle(Color.kyotoTextSecondary)
            Spacer()
            Text(value)
                .foregroundStyle(Color.kyotoTextPrimary)
        }
    }
}

#Preview {
    List {
        InfoRow(label: "地址", value: "京都市北區金閣寺町1")
        InfoRow(label: "開放時間", value: "9:00-17:00")
        InfoRow(label: "門票", value: "成人 500 円")
    }
}
