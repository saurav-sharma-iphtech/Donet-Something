import SwiftUI

struct DonationDetailView: View {
    let item: DonationViewModel.DonationItem

    var body: some View {
        VStack(spacing: 20) {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(12)

            Text(item.itemName)
                .font(.title)
                .bold()

            Text("Donated by: \(item.donorName)")
                .font(.headline)
                .foregroundColor(.gray)

            Spacer()
        }
        .padding()
        .presentationDetents([ .large]) // Optional: Controls height of the sheet
    }
}

