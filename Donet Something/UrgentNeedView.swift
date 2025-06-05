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

                            Text(need.category + " A+")
                                .font(.custom("Times New Roman", size: 17))
                                .foregroundColor(.black)
                            Text("1 Unit")
                                .font(.custom("Times New Roman", size: 17))
                                .foregroundColor(.gray)
                                .bold()
                            HStack {
                                Spacer()
                                Button(action: {
                                    // Action: navigate to full donor list
                                }) {
                                    Text("Donate Now")
                                        .font(.headline)
                                        .padding(.horizontal, 24)
                                        .padding(.vertical, 10)
                                        .background(Color.customGreen)
                                        .foregroundColor(.white)
//                                        .cornerRadius(10)
                                }
                                Spacer()
                            }
                            .padding(.top)
                        }
                        .padding()
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.color2]),
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
        .padding()
       
    }
}

struct UrgentNeedView_Previews: PreviewProvider {
    static var previews: some View {
        UrgentNeedView()
    }
}

        
