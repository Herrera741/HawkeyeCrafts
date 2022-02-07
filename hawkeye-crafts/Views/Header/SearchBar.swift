//
//  SearchBar.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/6/22.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText: String
    @Binding var searching: Bool
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search ..", text: $searchText)
            } //: HStack
            .foregroundColor(.gray)
            .padding(.horizontal, 10)
        } //: ZStack
        .cornerRadius(8)
        
    } //: body
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""), searching: .constant(true))
            .previewLayout(.sizeThatFits)
    }
}
