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
                    VStack(alignment: .leading, spacing: 16) {
                        HStack(spacing: 20) {
                            Image("plants")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .shadow(radius: 4)

                            VStack(alignment: .leading, spacing: 8) {
                                Text("Anil Kapoor")
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(Color.customGreen)

                                Text("A donation is a gift given, often to a charity or organization.")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .lineLimit(3)

                                HStack {
                                                Spacer()
                                                Button(action: {
                                                    // Add action
                                                }) {
                                                    Image(systemName: "plus")
                                                        .foregroundColor(.white)
                                                        .frame(width: 44, height: 44)
                                                        .background(Color.customGreen)
                                                        .clipShape(Circle())
                                                        .shadow(radius: 4)
                                                }
                                            }
                                            .padding(.top, 8)
                            }

                            Spacer()
                        }
                        .padding()
                    }
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.white, Color.color2]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .cornerRadius(16)
                    .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 4)
                    .padding(.horizontal)

              
            HomeTopDonners()
            
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
