//
//  HomeModel.swift
//  BMI Calculator
//
//  Created by William Tristão de Pauloa on 23/09/21.
//

import Foundation

struct BMIModel {
    enum Genre {
        case female;
        case male;
    }
    
    private(set) var genre: Genre = Genre.male
    private(set) var height: Double = 160
    private(set) var weight: Double = 75
    private(set) var age: Int = 22
    
    private(set) var bmiResult: BMIResult = BMIResult(BMI: 0, message: "", interpretation: "")
    
    mutating func changeGenre(_ genre: Genre) -> Void{
        self.genre = genre
    }
    
    mutating func changeHeight(_ height: Double) -> Void{
        self.height = height
    }
    
    mutating func changeAge(_ age: Int) -> Void {
        self.age = age
    }
    
    mutating func changeWeight(_ weight: Double) -> Void{
        self.weight = weight
    }
    
    func calculateBMI() -> Double {
        print(weight, height, weight / (height * height))
        return floor(weight / pow((height / 100 ), 2))
    }
    
    func getMessage(BMI: Double) -> String {
        var message: String
        
        if BMI >= 25 {
            message = "Você está acima do peso, tente se exercitar mais";
        } else if BMI > 18.5 {
            message = "Você está com o peso ideal. Bom trabalho!";
        } else {
            message =  "Você está abaixo do peso. Tente comer mais";
        }
        
        return message
    }
    
    func getInterpretation(BMI: Double) -> String {
        var interpretation: String
        
        if BMI >= 25 {
            interpretation = "Acima do peso";
        } else if BMI > 18.5 {
            interpretation = "Normal";
        } else {
            interpretation =  "Abaixo do peso";
        }
        
        return interpretation
    }
    
    mutating func calculateResult() -> Void {
        let BMI: Double = calculateBMI()
        let message = getMessage(BMI: BMI)
        let interpretation = getInterpretation(BMI: BMI)
        
        self.bmiResult = BMIResult(BMI: BMI, message: message, interpretation: interpretation)
    }
    
    struct BMIResult {
        var BMI: Double
        var message: String
        var interpretation: String
    }
}
