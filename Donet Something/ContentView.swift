import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            TabView {
                ZStack {
                    VStack {
                        HomeSearchBar(navigateToNotifications: {
                            path.append("notifications")
                        })
                        ScrollView {
                            HomeSlider()
                            UrgentNeedView()
                            HomeFilter()
                           
                            HomeRecentsDonation()
                            HomeTopDonners()
                            TopRecipient()
                            HomeTestiMonial()
                        }
                    }
                }
                .tabItem {
                    Label("Home", systemImage: "house")
                }

                Chat_Page()
                    .tabItem {
                        Label("Message", systemImage:"message")
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
}

extension Color {
    static let customGreen = Color(red: 71/255, green: 133/255, blue: 82/255)
    static let color2 =   Color(red: 222/255, green: 246/255, blue: 236/255)
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
