//
//  ContentView.swift
//  findtheflaggame
//
//  Created by Théo Ajavon on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentFlag: String = "france"
    
    @State private var goodOrBad: String = " "
    
    @State private var rep1: String = "France"
    @State private var rep2: String = "Spain"
    @State private var rep3: String = "United States"
    @State private var rep4: String = "Nigeria"
    
    @State private var imgBorder = Color(.white)
    @State private var bg1 = Color("skyblue")
    @State private var bg2 = Color("skyblue")
    @State private var bg3 = Color("skyblue")
    @State private var bg4 = Color("skyblue")
    
    
    
    
    
    var body: some View {
        
        VStack {
            Text(goodOrBad)
                .font(.largeTitle)
                .bold()
                .foregroundColor(goodOrBad == "Bonne Réponse !" ? .green : .red)
                .padding()
            
            Text("Quel est ce pays ?")
                .font(.title)
                .italic()
                .bold()
            
            AsyncImage(url: URL(string: "https://countryflagsapi.com/png/\(currentFlag.lowercased())")) { image in
                      image
                          .resizable()
                          .aspectRatio(contentMode: .fit)

                  } placeholder: {
                      Color.primary
                  }
                  .frame(width: 230, height: 160)
                  .padding()
                  
                  .border(imgBorder)
//                  .cornerRadius(20)
                .padding()

            
            VStack(spacing: 12){
                HStack(spacing: 12){
                    Button{
                        verifyAnswer(answerClick: rep1, numRep: 1)
                        print("Rep 1")
                    } label: {
                        Text(rep1)
                            .foregroundColor(Color(.white))
                            .font(.headline)
                            .frame(maxWidth: .infinity, minHeight: 40, idealHeight: 40)
                            
                            .padding()
                            .background(bg1)
                            .cornerRadius(10)
                    }
                    
                    Button{
                        verifyAnswer(answerClick: rep2, numRep: 2)
                        print("Rep 2")
                    } label: {
                        Text(rep2)
                            .foregroundColor(Color(.white))
                            .font(.headline)
                            .frame(maxWidth: .infinity, minHeight: 40, idealHeight: 40)
                            .padding()
                            .background(bg2)
                            .cornerRadius(10)
                    }
                }
                
                HStack(spacing: 12){
                    Button{
                        verifyAnswer(answerClick: rep3, numRep: 3)
                        print("Rep 3")
                    } label: {
                        Text(rep3)
                            .foregroundColor(Color(.white))
                            .font(.headline)
                            .frame(maxWidth: .infinity, minHeight: 40, idealHeight: 40)
                            .padding()
                            .background(bg3)
                            .cornerRadius(10)
                    }
                    
                    Button{
                        verifyAnswer(answerClick: rep4, numRep: 4)
                        print("Rep 4")
                    } label: {
                        Text(rep4)
                            .foregroundColor(Color(.white))
                            .font(.headline)
                            .frame(maxWidth: .infinity, minHeight: 40, idealHeight: 40)
                            .padding()
                            .background(bg4)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
            
            Button{
                generateCountry()
            } label: {
                Text("Générer un nouveau pays")
                    .foregroundColor(Color(.white))
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.purple)
                    .cornerRadius(10)
            }
            
        }
        .padding()
    }
    
    private func generateCountry() -> String {
        var countryAnswer: [String] = []
        
        
        while countryAnswer.count < 4 {
            let randomCountry = allCountry.randomElement()!
            if !countryAnswer.contains(randomCountry) {
                countryAnswer.append(randomCountry)
            }
            
        }
        var goodAnswer = countryAnswer.randomElement()!.lowercased()
        print("Yo")
        
        self.goodOrBad = " "
        
        self.rep1 = countryAnswer.remove(at: Int.random(in: 0..<countryAnswer.count))
        self.rep2 = countryAnswer.remove(at: Int.random(in: 0..<countryAnswer.count))
        self.rep3 = countryAnswer.remove(at: Int.random(in: 0..<countryAnswer.count))
        self.rep4 = countryAnswer.remove(at: Int.random(in: 0..<countryAnswer.count))
        
        self.imgBorder = Color(.white)
        
        self.bg1 = Color("skyblue")
        self.bg2 = Color("skyblue")
        self.bg3 = Color("skyblue")
        self.bg4 = Color("skyblue")
        
        self.currentFlag = goodAnswer
        
        return goodAnswer
        
    }
    
    private func verifyAnswer(answerClick: String, numRep: Int) {
        if answerClick.lowercased() == currentFlag {
            self.goodOrBad = "Bonne Réponse !"
            self.imgBorder = Color("green")
            if numRep == 1 {
                self.bg1 = Color("green")
            } else if numRep == 2 {
                self.bg2 = Color("green")
            } else if numRep == 3 {
                self.bg3 = Color("green")
            } else if numRep == 4 {
                self.bg4 = Color("green")
            }
            
            
            
        } else {
            self.goodOrBad = "Mauvaise Réponse !"
            self.imgBorder = Color(.red)
            if numRep == 1 {
                self.bg1 = Color(.red)
            } else if numRep == 2 {
                self.bg2 = Color(.red)
            } else if numRep == 3 {
                self.bg3 = Color(.red)
            } else if numRep == 4 {
                self.bg4 = Color(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
