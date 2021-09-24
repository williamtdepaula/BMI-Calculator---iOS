//
//  Button.swift
//  BMI Calculator
//
//  Created by William Tristão de Pauloa on 23/09/21.
//

import SwiftUI

struct Button: View {
    var title: String
    
    init(_ title: String){
        self.title = title
    }
    
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(.pink)
            Text(title).foregroundColor(.white)
        }
        .frame(height: 50)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button("Calcular")
    }
}
