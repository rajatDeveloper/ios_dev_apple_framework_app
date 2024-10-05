//
//  FrameworkGridViewModel.swift
//  Apple-Framework-App
//
//  Created by RAJAT DHIMAN on 18/07/24.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    var selectedFramework : Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    let coloums: [GridItem]  = [GridItem(.flexible()) ,GridItem(.flexible()), GridItem(.flexible())]
    
}
