//
//  ContentView.swift
//  BMI Calculator
//
//  Created by William Tristão de Pauloa on 23/09/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var homeViewModel: HomeViewModel = HomeViewModel()
    
    @State private var shouldTransit: Bool = false
    
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
    }
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .top){
                Color.background.ignoresSafeArea()
                
                VStack{
                    
                    HStack{
                        GenreCard(type: .male, selected: homeViewModel.genre == BMIModel.Genre.male)
                            .onTapGesture {
                                homeViewModel.changeGenre(.male)
                            }
                        
                        GenreCard(type: .female, selected: homeViewModel.genre == BMIModel.Genre.female)
                            .onTapGesture {
                                homeViewModel.changeGenre(.female)
                            }
                    }
                    
                    SliderCard(onChanged: {value in homeViewModel.changeHeight(Double(value))})
                    
                    HStack{
                        AddRemoveCard(title: "Peso", value: Int(homeViewModel.weight)) { weight in homeViewModel.changeWeight(Double(weight))}
                        AddRemoveCard(title: "Idade", value: homeViewModel.age){age in homeViewModel.changeAge(age)}
                    }
                    NavigationLink(destination: ResultView(bmiResult: homeViewModel.bmiResult), isActive: $shouldTransit){
                        Button("Calcular")
                            .onTapGesture {
                                homeViewModel.calculateResult()
                                shouldTransit = true
                            }
                    }
                }
                .padding()
            }
            .navigationTitle("CALCULADORA IMC")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
