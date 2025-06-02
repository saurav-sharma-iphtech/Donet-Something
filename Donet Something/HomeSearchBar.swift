import SwiftUI
struct HomeSearchBar: View {
    @State private var searchText = ""
    var navigateToNotifications: () -> Void

    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.customGreen)
                    .font(.system(size: 20))

                TextField("Search", text: $searchText)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(30)
            .shadow(color: Color.color2, radius: 4)
            .padding(.horizontal)

            Button(action: {
                navigateToNotifications()
            }) {
                Image(systemName: "bell")
                    .foregroundColor(Color.customGreen)
                    .font(.system(size: 30))
                    .padding(.trailing, 15)
            }
        }
        .padding(.vertical, 5)
    }
}


struct HomeSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeSearchBar {
            // No-op
        }
    }
}
