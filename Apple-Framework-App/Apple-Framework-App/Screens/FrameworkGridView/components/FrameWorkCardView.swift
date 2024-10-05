//
//  FrameWorkCardView.swift
//  Apple-Framework-App
//
//  Created by RAJAT DHIMAN on 18/07/24.
//

import SwiftUI

struct FrameWorkCardView: View {
    let item : Framework
    
    var body: some View{
        VStack {
            
            Image(item.imageName)
                .resizable()
                .frame(width : 90, height:90 )
            Text(item.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}

#Preview {
    FrameWorkCardView(item: MockData.sampleFramework)
}
