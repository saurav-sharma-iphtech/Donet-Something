import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    @State private var dummyItems = ["Item 1", "Item 2", "Item 3"]

    var body: some View {
        NavigationStack(path: $path) {
            TabView {
                VStack {
                    HomeSearchBar(navigateToNotifications: {
                        path.append("notifications")
                    })

                    ScrollView {
                        VStack(spacing: 16) {
                            HomeSlider()
                            UrgentNeedView()
                            HomeFilter()
                            HomeRecentsDonation()
                            HomeTopDonners()
                            TopRecipient()
                            HomeTestiMonial()

                            // Dummy rows for scroll height to enable pull to refresh
                            ForEach(dummyItems, id: \.self) { item in
                                Text(item)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.gray.opacity(0.3))
                                    .cornerRadius(8)
                            }
                        }
                        .padding()
                    }
                    .refreshable {
                        await refreshPage()
                    }
                }
                .tabItem {
                    Label("Home", systemImage: "house")
                }

                Chat_Page()
                    .tabItem {
                        Label("Message", systemImage: "message")
                    }

                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
            .navigationDestination(for: String.self) { value in
                if value == "notifications" {
                    Notification_Page()
                }
            }
        }
    }

    func refreshPage() async {
        print("Refreshing...")
        try? await Task.sleep(nanoseconds: 1_000_000_000) // 1 second delay
        dummyItems.append("New Item \(dummyItems.count + 1)")
        print("Refreshed!")
    }
}

extension Color {
    static let customGreen = Color(red: 71/255, green: 133/255, blue: 82/255)
    static let color2 = Color(red: 222/255, green: 246/255, blue: 236/255)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
