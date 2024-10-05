//
//  SafariView.swift
//  Apple-Framework-App
//
//  Created by RAJAT DHIMAN on 18/07/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
 
    
    var url : URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url  )
    }
    
    func updateUIViewController(_ uiViewController:  SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
    
    
    

}
