import SwiftUI
struct HomeTopDonners: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Top Donors")
                .font(.title)
                .bold()
                .padding(.leading)
            
            ForEach(topDonors.prefix(4)) { donor in
                HStack(alignment: .top, spacing: 16) {
                    Image(donor.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(radius: 4)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(donor.name)
                            .font(.headline)
                            .foregroundColor(.customGreen)
                        
                        Text(donor.message)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .lineLimit(3)
                    }
                    Spacer()
                }
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
                .padding(.horizontal)
            }
            
            HStack {
                Spacer()
                Button(action: {
                   
               
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
        .padding(.top, 20)
        
    }
}

struct HomeTopDonners_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopDonners()
    }
}
