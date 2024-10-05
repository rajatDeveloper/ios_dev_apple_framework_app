//
//  AFButton.swift
//  Apple-Framework-App
//
//  Created by RAJAT DHIMAN on 18/07/24.
//

import SwiftUI

struct AFButton: View {
    var title : String
    var textColor : Color
    var bgColor : Color
    
    var body: some View {
    Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 288 , height: 50)
            .foregroundColor(textColor)
            .background(bgColor)
            .cornerRadius(5.0)
    }
}

#Preview {
    AFButton(
        title: "Test", textColor: Color.blue, bgColor: Color.black
    )
}
