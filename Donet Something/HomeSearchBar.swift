//
//  HomeSearchBar.swift
//  Donet Something
//
//  Created by iPHTech 26 on 29/05/25.
//

import SwiftUI

struct HomeSearchBar: View {
    @State private var searchText = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.customGreen)
                
                
                    .font(.system(size: 20))
                TextField("Search", text: $searchText)
                
                //
                
            }
            .padding()
            .background(Color.white)
            
            .cornerRadius(30)
            .shadow(color: Color.color2
                    , radius: 4, x: 0, y: 0)
            .padding(.horizontal)
            
            Button(action: {
            }) {
                Image(systemName: "bell")
                    .foregroundColor(Color.customGreen)
                    .font(.system(size: 30))
                    .padding(.trailing,15)
            }
            
            
            
            
        }
        .padding(.vertical,5)
    }
}

struct HomeSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeSearchBar()
    }
}
