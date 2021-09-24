//
//  SliderCard.swift
//  BMI Calculator
//
//  Created by William Tristão de Pauloa on 23/09/21.
//

import SwiftUI

struct SliderCard: View {
    var onChanged: (_ value: Double) -> Void
    
    @State private var height = 80.0
    @State var isEditingSlider: Bool = false
    
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10).foregroundColor(.cardBackground)
            VStack{
                Text("Altura").foregroundColor(.textDescription).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                HStack(alignment: .bottom, spacing: 0){
                    Text("\(Int(height))")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title)
                        .padding(.bottom, -3)
                    Text("cm")
                }
                .foregroundColor(.white)
                
                Slider(
                    value: $height,
                    in: 0...200,
                    onEditingChanged: {editing in
                        print("teste")
                        if isEditingSlider == true {
                            onChanged(height)
                        }
                        isEditingSlider = editing
                    }
                )
            }
            .padding()
        }
    }
}

struct SliderCard_Previews: PreviewProvider {
    static var previews: some View {
        SliderCard(onChanged: {v in print(v)})
    }
}
