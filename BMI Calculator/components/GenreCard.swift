//
//  GenreCard.swift
//  BMI Calculator
//
//  Created by William Tristão de Pauloa on 23/09/21.
//

import SwiftUI

struct GenreCard: View {
    enum GenreCardType: String {
        case male
        case female
    }
    
    var type: GenreCardType
    var selected: Bool
    
    func getIconName() -> String{
        switch type {
        case GenreCardType.male: return "arrow.up.right"
        case GenreCardType.female: return "arrow.down"
        }
    }
    
    func getText() -> String {
        switch type {
        case GenreCardType.male: return "Masculino"
        case GenreCardType.female: return "Feminino"
        }
    }
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10).foregroundColor(selected ? .activedCard : .cardBackground)
            VStack{
                Image(systemName: getIconName())
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Text(getText())
                    .foregroundColor(.textDescription)
                    .fontWeight(.semibold)
            }
        }
    }
}


struct GenreCard_Previews: PreviewProvider {
    static var previews: some View {
        GenreCard(type: .female, selected: false)
    }
}
