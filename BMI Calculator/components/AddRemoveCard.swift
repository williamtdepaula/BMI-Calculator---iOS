//
//  AddRemoveCard.swift
//  BMI Calculator
//
//  Created by William Tristão de Pauloa on 23/09/21.
//

import SwiftUI

struct AddRemoveCard: View {
    let title: String
    var value: Int
    let onChangeValue: (_ value: Int) -> Void
    
    func removeValue() -> Void{
        onChangeValue(value-1)
    }
    
    func addValue() -> Void{
        onChangeValue(value+1)
    }
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10).foregroundColor(.cardBackground)
            VStack{
                Text(title).foregroundColor(.textDescription)
                    .fontWeight(.semibold)
                
                Text(String(value))
                    .font(.title).foregroundColor(.white).fontWeight(.semibold)
                
                HStack{
                    ZStack{
                        Circle().foregroundColor(.button).aspectRatio(1.4, contentMode: .fit)
                        Image(systemName: "minus").foregroundColor(.white)
                    }
                    .onTapGesture(perform: removeValue )
                    ZStack{
                        Circle().foregroundColor(.button).aspectRatio(1.4, contentMode: .fit)
                        Image(systemName: "plus").foregroundColor(.white)
                    }
                    .onTapGesture(perform: addValue )
                }
            }
            .padding()
        }
    }
}


struct AddRemoveCard_Previews: PreviewProvider {
    static var previews: some View {
        AddRemoveCard(title: "Adicionar", value: 30, onChangeValue: {v in print(v)})
    }
}
