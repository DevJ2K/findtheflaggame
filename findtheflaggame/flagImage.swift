//
//  flagImage.swift
//  findtheflaggame
//
//  Created by Théo Ajavon on 04/02/2023.
//

import SwiftUI

struct flagImage: View {
    
    var country: String
    
    var body: some View {
        AsyncImage(url: URL(string: "https://countryflagsapi.com/png/\(country)")) { image in
                  image
                      .resizable()
                      .aspectRatio(contentMode: .fit)

              } placeholder: {
                  Color.gray
              }
              .frame(width: 250, height: 250)
              .padding()
    }
}

struct flagImage_Previews: PreviewProvider {
    static var previews: some View {
        flagImage(country: "brazil")
    }
}
