import SwiftUI

struct ProfileView: View {
    var body: some View {
                        
            ScrollView {
                
                VStack(spacing: 20) {
                    
                    VStack {
                        Image("dog")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .shadow(radius: 6)
                            .padding(.top, 30)
                        
                        Text("Ishika Sharma")
                            .font(.title2)
                            .bold()
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.top, 8)
                        
                        HStack(spacing: 16) {
                            Text("08 Connections")
                            Text("07 Saved NGOs")
                        }
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.9))
                        .padding(.bottom, 20)
                    }
                    
                    .frame(maxWidth: .infinity)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.customGreen, Color.color2]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    
                    
//                    .cornerRadius(30)
                    //                .padding(.horizontal)
                    
                    
                    
                    ProfileSection(title: "Account", items: [
                        ("person.crop.circle", "My Account"),
                        ("gift.circle", "My Donations")
                    ])
                    
                    
                    
                    ProfileSection(title: "Preferences", items: [
                        ("globe", "Change Language"),
                        ("bell.circle", "Manage Notifications")
                    ])
                    
                    
                    ProfileSection(title: "Support", items: [
                        ("questionmark.circle", "Help & Support"),
                        ("phone.circle", "Customer Care"),
                        ("paperplane.circle", "Send Feedback")
                    ])
                    
                    Button(action: {
                        // Handle logout
                    }) {
                        HStack {
                            Image(systemName: "arrow.backward.circle.fill")
                                .font(.title2)
                                .foregroundColor(.red)
                            Text("Logout")
                                .font(.title3)
                                .foregroundColor(.red)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                    }
                    .background(Color.red.opacity(0.1))
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .padding(.bottom, 40)
                }
                .padding(.top)
            }
        }
        
    }

struct ProfileSection: View {
    let title: String
    let items: [(String, String)]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
                .padding(.horizontal)
                .padding(.top, 10)

            ForEach(items, id: \.1) { icon, label in
                Button(action: {
                    // Add action
                }) {
                    HStack {
                        Image(systemName: icon)
                            .foregroundColor(.customGreen)
                            .frame(width: 30)
                        Text(label)
                            .foregroundColor(.primary)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                }
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
                .padding(.horizontal)
            }
        }
        .padding(.bottom, 10)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
