import SwiftUI

struct TopRecipient: View {
//    let topDonors: [TopDonor] // Assume Donor is a model with name, imageName, and messageCannot

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Top Recipient")
                .font(.title)
                .bold()
                .padding(.leading)

            // Limit to 4 cards using prefix
            ForEach(topDonors.prefix(4)) { donor in
                HStack(alignment: .top, spacing: 16) {
                    Image(donor.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(radius: 4)

                    VStack(alignment: .leading, spacing: 6) {
                        Text(donor.name)
                            .font(.headline)
                            .foregroundColor(.customGreen)

                        Text(donor.message)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .fixedSize(horizontal: false, vertical: true) // Allow multi-line
                    }

                    Spacer()
                }
                .padding()
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.white, Color.color2]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
                .padding(.horizontal)
            }

            // View More Button
            HStack {
                Spacer()
                Button(action: {
                    // Action: navigate to full donor list
                }) {
                    Text("View More >>")
                        .font(.headline)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 10)
                        .background(Color.customGreen)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding(.top)
        }
    }
}
