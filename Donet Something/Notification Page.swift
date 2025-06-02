import SwiftUI

struct Notification_Page: View {
    var body: some View {
        NavigationView {
      
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("Notifications")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                        .padding(.top)
                    ScrollView {
                    // New Notifications Section
                    NotificationSection(title: "New", notifications: [
                        "Smile foundation posted a new image",
                        "Smile foundation updated their donation list"
                    ])
                    
                    // This Week Notifications Section
                    NotificationSection(title: "This Week", notifications: [
                        "Smile foundation posted a new image",
                        "Smile foundation shared volunteer photos"
                    ])
                    
                    Spacer(minLength: 40)
                }
            }
            .navigationBarHidden(true)
            
        }
    }
}

struct NotificationSection: View {
    let title: String
    let notifications: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.title2)
                .bold()
                .padding(.horizontal)

            ForEach(notifications, id: \.self) { message in
                HStack(alignment: .top, spacing: 16) {
                    Image("dog")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 3))
                        .shadow(radius: 4)
                    
                    Text(message)
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.primary)
                        .lineLimit(2)
                    
                    Spacer()
                }
                .padding()
//                .background(Color.white)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.white, Color.color2]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.05), radius: 3, x: 0, y: 2)
                .padding(.horizontal)
            }
        }
        .padding(.top)
    }
}

struct Notification_Page_Previews: PreviewProvider {
    static var previews: some View {
        Notification_Page()
    }
}
