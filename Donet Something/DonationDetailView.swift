import SwiftUI

struct DonationDetailView: View {
    let item: DonationViewModel.DonationItem

    var body: some View {
        VStack(spacing: 16) {
         
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 250)
                .cornerRadius(12)
                .padding(.horizontal)

        
            Text(item.itemName)
                .font(.title)
                .bold()

            
            Text("Donated by: \(item.donorName)")
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .foregroundColor(.customGreen)

           
            VStack(alignment: .leading, spacing: 8) {
                Text("Description")
                    .font(.title2)
                    .bold()

                Text("Saving plants, or plant conservation, encompasses various activities aimed at preventing plants from becoming extinct.")
                    .font(.custom("Times New Roman", size: 18))
                    .foregroundColor(.gray)
                    .lineLimit(nil)
            }
            .padding()

            
            Button(action: {
                // Action to receive item
            }) {
                Text("Receive it")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .background(Color.customGreen)
                    .cornerRadius(12)
            }
            .padding()

            Spacer()
        }
        .padding(.top)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.white, Color.color2]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .presentationDetents([.medium, .large]) // Optional: height of bottom sheet
    }
}

struct DonationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DonationDetailView(item: DonationViewModel.DonationItem(
            category: "Plant",
            imageName: "plant1",
            donorName: "Himanshu Chikara",
            itemName: "Plants"
        ))
    }
}
