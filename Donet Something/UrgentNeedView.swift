import SwiftUI

struct UrgentNeedView: View {
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Urgent Need")
                .font(.title)
                .bold()
                .padding(.leading)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(urgentNeeds) { need in
                        VStack {
                            Image(need.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipped()
                                .cornerRadius(6)

                            Text(need.donorName)
                                .font(.system(size: 20))
                                .foregroundColor(.customGreen)
                                .bold()

                            Text(need.category)
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
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.top)
    }
}

struct UrgentNeedView_Previews: PreviewProvider {
    static var previews: some View {
        UrgentNeedView()
    }
}

        
