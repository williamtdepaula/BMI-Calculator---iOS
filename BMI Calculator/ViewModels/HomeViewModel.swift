//
//  HomeViewModel.swift
//  BMI Calculator
//
//  Created by William Tristão de Pauloa on 23/09/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published private var bmiModel: BMIModel = BMIModel()
    
    var genre: BMIModel.Genre{
        bmiModel.genre
    }
    
    var height: Double {
        bmiModel.height
    }
    
    var weight: Double {
        bmiModel.weight
    }
    
    var age: Int {
        bmiModel.age
    }
    
    var bmiResult: BMIModel.BMIResult {
        bmiModel.bmiResult
    }
    
    func changeGenre(_ genre: BMIModel.Genre) -> Void{
        bmiModel.changeGenre(genre)
    }
    
    func changeHeight(_ height: Double) -> Void {
        bmiModel.changeHeight(height)
    }
    
    func changeAge(_ age: Int) -> Void{
        bmiModel.changeAge(age)
    }
    
    func changeWeight(_ weight: Double) -> Void{
        bmiModel.changeWeight(weight)
    }
    
    func calculateResult() -> Void{
        bmiModel.calculateResult()
    }
}
