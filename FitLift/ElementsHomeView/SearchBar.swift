//
//  SearchBar.swift
//  FitLift
//
//  Created by Catherine on 07/04/2022.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack{
            Text("Search")
                .padding()
                .font(.system(size: 20))
            Image("Search")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
        }
        .frame(width: 380.0, height: 55)
        .background(Color(red: 0.8980392156862745, green: 0.8980392156862745, blue: 0.9176470588235294).cornerRadius(15))
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
