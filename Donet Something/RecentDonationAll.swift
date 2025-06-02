//
//  RecentDonationAll.swift
//  Donet Something
//
//  Created by iPHTech 26 on 02/06/25.
//

import SwiftUI

struct RecentDonationAll: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Recent Donation")
                .font(.title)
                .bold()
                .padding(.leading)
            
            ForEach(allDonations) { donation in
                HStack(spacing: 20) {
                    Image(donation.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(radius: 4)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(donation.donorName)
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color.customGreen)
                        
                        Text("A donation is a gift given, often to a charity or organization.")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .lineLimit(3)
                        
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
                .cornerRadius(16)
                .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 4)
            }
            
            Button(action: {
            }) {
                Text("View More")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .background(Color.customGreen)
                    .cornerRadius(12)
                    .padding(.horizontal)
            }
            .padding(.top, 8)
        }
        .padding(.horizontal)
   
    }
}

struct RecentDonationAll_Previews: PreviewProvider {
    static var previews: some View {
        RecentDonationAll()
    }
}
