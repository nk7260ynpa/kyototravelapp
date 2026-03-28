import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TransportationListView()
                .tabItem {
                    Label("交通", systemImage: "tram.fill")
                }

            AttractionListView()
                .tabItem {
                    Label("景點", systemImage: "building.columns.fill")
                }

            FestivalListView()
                .tabItem {
                    Label("慶典", systemImage: "party.popper.fill")
                }

            RestaurantListView()
                .tabItem {
                    Label("餐廳", systemImage: "fork.knife")
                }
        }
        .tint(Color.kyotoAccent)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
