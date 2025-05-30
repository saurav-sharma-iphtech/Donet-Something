//
//  HomeTestiMonial.swift
//  Donet Something
//
//  Created by iPHTech 26 on 30/05/25.
//

import SwiftUI

struct HomeTestiMonial: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("TESTIMONIAL")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.customGreen)
                .padding(.top, 40)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(testimonials) { testimonial in
                        ZStack {
                            VStack(spacing: 12) {
                                Spacer().frame(height: 60)

                                Text(testimonial.name)
                                    .font(.title2)
                                    .bold()
                                    
                                    .foregroundColor(.primary)

                                Text("⭐⭐⭐⭐⭐")
                                    .font(.title3)

                                Text("“\(testimonial.message)”")
//                                    .font(.subheadline)
                                    .font(.custom("Times New Roman", size: 15))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(4)
                                    .truncationMode(.tail)
                                    .padding(.horizontal)

                                Spacer()
                            }
                            .padding(.top, 20)
                            .frame(height: 250)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.85)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 4)
                            )

                            // Overlapping Image
                            Image(testimonial.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                .shadow(radius: 4)
                                .offset(y: -125)
                        }
                        .padding(.top, 80)
                    }
                }
                .padding(.horizontal)
            }

        }
        .padding(.bottom, 30)
     
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.white, Color.color2]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )

    }
}

struct HomeTestiMonial_Previews: PreviewProvider {
    static var previews: some View {
        HomeTestiMonial()
    }
}

