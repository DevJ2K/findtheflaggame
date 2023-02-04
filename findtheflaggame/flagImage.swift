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
        AsyncImage(url: URL(string: "https://countryflagsapi.com/png/\(country.lowercased())")) { image in
                  image
                      .resizable()
                      .aspectRatio(contentMode: .fit)

              } placeholder: {
                  Color.primary
              }
              .frame(width: 230, height: 160)
              .padding()
              
              .border(.primary)
//              .background(Color(.white))
    }
}

struct flagImage_Previews: PreviewProvider {
    static var previews: some View {
        flagImage(country: "brazil")
    }
}
