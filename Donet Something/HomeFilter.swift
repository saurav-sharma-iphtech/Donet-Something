import SwiftUI

struct HomeFilter: View {
    @StateObject private var viewModel = DonationViewModel()
    @State private var selectedItem: DonationViewModel.DonationItem? = nil

    let rows = [GridItem(.fixed(10))]

    var body: some View {
        VStack {
            // Category Filter ScrollView
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows, spacing: 16) {
                    ForEach(viewModel.categories, id: \.0) { imageName, label in
                        Button(action: {
                            viewModel.selectedCategory = label
                        }) {
                            HStack(spacing: 12) {
                                Text(label)
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)

                                Image(imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 40, height: 40)
                                    .clipped()
                                    .cornerRadius(6)
                            }
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.color2, Color.white]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 4)
                        }
                    }
                }
                .padding()
            }
            .frame(height: 90)

            // Donation Items ScrollView
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(viewModel.filteredOtherDonations) { item in
                        VStack {
                            Image(item.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipped()
                                .cornerRadius(6)

                            Text(item.donorName)
                                .font(.system(size: 20))
                                .foregroundColor(.customGreen)
                                .bold()

                            Text(item.itemName)
                                .font(.custom("Times New Roman", size: 17))
                                .foregroundColor(.black)
                        }
                        .padding()
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.white, Color.color2]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 4)
                        .cornerRadius(10)
                        .onTapGesture {
                            selectedItem = item
                        }
                    }
                }
            }
            .padding()
        }
        // BOTTOM SHEET
        .sheet(item: $selectedItem) { item in
            DonationDetailView(item: item)
        }
    }
}
