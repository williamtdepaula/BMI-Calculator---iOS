//
//  ResultView.swift
//  BMI Calculator
//
//  Created by William Tristão de Pauloa on 23/09/21.
//

import SwiftUI

struct ResultView: View {
    let bmiResult: BMIModel.BMIResult
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.background.ignoresSafeArea()
            VStack{
                ZStack(alignment:.top){
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.cardBackground)
                    VStack{
                        Text(bmiResult.interpretation)
                            .foregroundColor(.green)
                            .fontWeight(.semibold)
                            .font(.title)
                        Spacer()
                        Text(String(bmiResult.BMI))
                            .foregroundColor(.white)
                            .font(.system(size: 60))
                            .fontWeight(.heavy)
                        Spacer()
                        Text(bmiResult.message)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                }
                Spacer(minLength: 20)
                
                Button("RE-CALCULAR")
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                
            }
            .padding()
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(bmiResult: BMIModel.BMIResult(BMI: 50, message: "Teste", interpretation: "Outro teste"))
    }
}
