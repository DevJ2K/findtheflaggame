//
//  ContentView.swift
//  findtheflaggame
//
//  Created by Théo Ajavon on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var rep1: String = "Reponse 1"
    @State private var rep2: String = "Reponse 2"
    @State private var rep3: String = "Reponse 3"
    @State private var rep4: String = "Reponse 4"
    
    
    var body: some View {
        VStack {
            Text("Which country is ?")
                .font(.title)
                .italic()
                .bold()
            
//            flagImage(country: allCountry.randomElement()!)
//            flagImage(country: "brazil")
            Rectangle()
                .frame(width: 290, height: 200)
                .foregroundColor(.blue)
                .padding()
            
            VStack(spacing: 8){
                HStack(spacing: 8){
                    Button{
                        print("Rep 1")
                    } label: {
                        Text(rep1)
                            .foregroundColor(Color(.white))
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .cornerRadius(10)
                    }
                    
                    Button{
                        print("Rep 2")
                    } label: {
                        Text(rep2)
                            .foregroundColor(Color(.white))
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .cornerRadius(10)
                    }
                }
                
                HStack{
                    Button{
                        print("Rep 3")
                    } label: {
                        Text(rep3)
                            .foregroundColor(Color(.white))
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .cornerRadius(10)
                    }
                    
                    Button{
                        print("Rep 4")
                    } label: {
                        Text(rep4)
                            .foregroundColor(Color(.white))
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .cornerRadius(10)
                    }
                }
            }
            
            Button{
                generateCountry()
            } label: {
                Text("Générer un nouveau pays")
                    .foregroundColor(Color(.white))
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.red)
                    .cornerRadius(10)
            }
            
        }
        .padding()
    }
    
    private func generateCountry() {
        let countryAnswer: [String] = []
        let goodAnswer = ""
        
        while countryAnswer.count < 4 {
//            if allCountry.randomElement()! not in
        }
        print("Yo")
        self.rep1 = "Coucou"
        self.rep2 = "Ahaha"
        self.rep3 = "Mdrrrr"
        self.rep4 = "Ptdrrr"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
