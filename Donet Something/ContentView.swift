//
//  ContentView.swift
//  Donet Something
//
//  Created by iPHTech 26 on 28/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    var body: some View {
        ZStack{
            //            Color(red: 222/255, green: 246/255, blue: 236/255)
            Color(.white)
                .ignoresSafeArea()
            VStack{
                HomeSearchBar()
                ScrollView{
                    HomeSlider()
                    HomeFilter()
                    HomeRecentsDonation()
                    HomeTopDonners()
                    TopRecipient()
                    HomeTestiMonial()
                    
                }
                
            }
        }
    }
}

extension Color {
    static let customGreen = Color(red: 71/255, green: 133/255, blue: 82/255)
    static let color2 =   Color(red: 222/255, green: 246/255, blue: 236/255)
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
