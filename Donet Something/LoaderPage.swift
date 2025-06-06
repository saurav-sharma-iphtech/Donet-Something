//
//  LoaderPage.swift
//  Donet Something
//
//  Created by iPHTech 26 on 05/06/25.
//
import SwiftUI

struct LoaderPage: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack {
            ZStack {
                // Background Gradient
                LinearGradient(
                    gradient: Gradient(colors: [Color.customGreen, Color.color2]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(spacing: 30) {
                    // Logo
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .shadow(radius: 10)

                    // App Title (Optional)
                    Text("Donet Something")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)

                    // Loading Spinner
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(1.8)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    isActive = true
                }
            }
            .navigationDestination(isPresented: $isActive) {
                LoginPage()
            }
        }
    }
}

struct LoaderPage_Previews: PreviewProvider {
    static var previews: some View {
        LoaderPage()
    }
}
