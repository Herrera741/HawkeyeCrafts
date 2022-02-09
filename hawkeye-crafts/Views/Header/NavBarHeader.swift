//
//  NavBarHeader.swift
//  hawkeye-crafts
//
//  Created by Sergio Herrera on 2/6/22.
//

import SwiftUI

struct NavBarHeader: View {
    
    @State var searchText = ""
    @State var searching = false
    let searchBarOffsetY: CGFloat = 55
    let fullScreenWidth = UIScreen.main.bounds.width
    let halfScreenWidth = UIScreen.main.bounds.width * 0.5
    
    var body: some View {
            
        VStack(alignment: .center) {
            
            HStack {
                HStack {
                    Text("Hawkeye Crafts")
                        .font(searching ? .title : .title2)
                        .fontWeight(.semibold)
                }
                .frame(width: searching ? fullScreenWidth : halfScreenWidth)
                .offset(x: searching ? halfScreenWidth : 0)
                .padding(.leading, searching ? 0 : 5)
                
                if !searching {
                    Spacer()
                }
                
                
                SearchBar(searchText: $searchText, searching: $searching)
                    .padding(.trailing, 10)
                    .offset(x: searching ? -halfScreenWidth : 0 , y: searching ? searchBarOffsetY : 0)
                    .frame(width: searching ? fullScreenWidth - 10 : halfScreenWidth * 0.7, height: 40)
                    .onTapGesture {
                        withAnimation(Animation.easeInOut) {
                            searching.toggle()
                        }
                    }
            } //: HStack
        } //: VStack
        .frame(width: fullScreenWidth, height: searching ? 80 : 40)
        .padding(.top, searching ? 0 : 8)
        .padding(.bottom, searching ? searchBarOffsetY : 20)
        .background(Color("hc-blue"))
        
    } //: body
}

struct NavBarHeader_Previews: PreviewProvider {
    static var previews: some View {
        NavBarHeader()
            .previewLayout(.sizeThatFits)
    }
}
