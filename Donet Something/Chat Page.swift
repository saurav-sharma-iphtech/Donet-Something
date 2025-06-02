import SwiftUI

struct Chat_Page: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.white, Color.color2]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 16) {
                    // Search Bar
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.customGreen)
                        TextField("Search", text: $searchText)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(color: Color.black.opacity(0.1), radius: 4)
                    .padding(.horizontal)

                    // Title
                    Text("Messages")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)

                    // Message List
                    ScrollView {
                        VStack(spacing: 16) {
                            ChatRowView(name: "Narayan Agrawal", message: "I'm available", time: "12:40", unreadCount: 2)
                            ChatRowView(name: "Aarav Sharma", message: "Can we talk?", time: "11:30", unreadCount: 1)
                            ChatRowView(name: "Seva NGO", message: "Thanks for donating!", time: "10:05", unreadCount: 0)
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 100) // Extra space for button
                    }

                    Spacer()
                }
                .padding(.top)

                // Floating Action Button
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            // Add your action here
                        }) {
                            Image(systemName: "plus")
                                .font(.system(size: 32, weight: .bold))
                                .frame(width: 70, height: 70)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(radius: 6)
                        }
                        .padding(.bottom, 20)
                        .padding(.trailing, 20)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ChatRowView: View {
    let name: String
    let message: String
    let time: String
    let unreadCount: Int

    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image("dog")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 4)

            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.title3)
                    .bold()

                Text(message)
                    .font(.body)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 6) {
                Text(time)
                    .font(.caption)
                    .foregroundColor(.gray)

                if unreadCount > 0 {
                    Text("\(unreadCount)")
                        .font(.caption2)
                        .foregroundColor(.white)
                        .frame(width: 24, height: 24)
                        .background(Color.green)
                        .clipShape(Circle())
                }
            }
        }
        .padding()
//        .background(Color.white.opacity(0.9))
        .cornerRadius(12)
//        .shadow(color: Color.black.opacity(0.05), radius: 2)
    }
    
}

struct Chat_Page_Previews: PreviewProvider {
    static var previews: some View {
        Chat_Page()
    }
}
