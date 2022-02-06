//
//  NavBarHeader.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/6/22.
//

import SwiftUI

struct NavBarHeader: View {
    
    @State var searchText = ""
    
    var body: some View {
            
        HStack {
            Text("Hawkeye Crafts")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.leading, 10)
            
            Spacer()
            
            SearchBar(searchText: $searchText)
                .padding(.horizontal, 10)
        }
        .padding(.top, 45)
        .padding(.bottom, 15)
        .background(Color("hc-blue"))
        .ignoresSafeArea()
        
    } //: body
}

struct NavBarHeader_Previews: PreviewProvider {
    static var previews: some View {
        NavBarHeader()
            .previewLayout(.sizeThatFits)
    }
}
