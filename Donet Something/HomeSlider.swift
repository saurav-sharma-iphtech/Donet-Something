//
//  HomeSlider.swift
//  Donet Something
//
//  Created by iPHTech 26 on 29/05/25.
//

import SwiftUI

struct HomeSlider: View {
   
    @State private var currIndex = 0
    let img:[String] = ["a","b","c","d","e","f","g"]
    var body: some View {
         
        HStack {
                  GeometryReader { geometry in
                      Image(img[currIndex])
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: geometry.size.width, height: 150)
                          .clipped()
                          .cornerRadius(12)
                          .animation(.easeInOut, value: currIndex) // Smooth animation
                  }
                  .frame(height: 140)
              }
        .padding(.horizontal)
        .padding(.top)
              .onAppear {
                  Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
                      withAnimation {
                          currIndex = (currIndex + 1) % img.count
                      }
                  }
              }
    }
}

struct HomeSlider_Previews: PreviewProvider {
    static var previews: some View {
        HomeSlider()
    }
}
