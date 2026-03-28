import SwiftUI

struct StyledListRow: View {
    let icon: String
    let title: String
    let subtitle: String

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 18))
                .foregroundStyle(.white)
                .frame(width: 40, height: 40)
                .background(Color.kyotoAccent)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundStyle(Color.kyotoTextPrimary)
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(Color.kyotoTextSecondary)
                    .lineLimit(2)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    List {
        StyledListRow(icon: "tram.fill", title: "京都市巴士", subtitle: "覆蓋京都市區主要景點的公共巴士系統")
        StyledListRow(icon: "building.columns.fill", title: "金閣寺", subtitle: "寺廟")
    }
    .preferredColorScheme(.dark)
}
