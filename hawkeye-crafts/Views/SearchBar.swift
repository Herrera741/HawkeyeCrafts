//
//  SearchBar.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/6/22.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search ..", text: $searchText)
            }
            .foregroundColor(.gray)
            .padding(.horizontal, 10)
        }
        .frame(width: 135, height: 40)
        .cornerRadius(15)
//        .padding(.horizontal, 10)
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}
