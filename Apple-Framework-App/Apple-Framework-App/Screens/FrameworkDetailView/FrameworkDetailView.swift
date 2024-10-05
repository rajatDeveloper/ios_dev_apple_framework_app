//
//  FrameworkDetailView.swift
//  Apple-Framework-App
//
//  Created by RAJAT DHIMAN on 18/07/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework : Framework
    @Binding var isShowingDetailView :Bool
    @State private var isShowingSafariView = false ;
    var body: some View {
        VStack{
            
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                }
            }.padding()
           
            Spacer()
            FrameWorkCardView(item: framework)
            Spacer()
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!) {
                Label("Learn More", systemImage:"book.fill")
                    .buttonStyle(.borderedProminent)
                    
                    .tint(Color.red)
            }
    
//            Button{
//                isShowingDetailView = true
//               
//            } label: {
////                AFButton(title: "Learn More", textColor: Color.white, bgColor: Color.red)
////                Label("Learn More", systemImage:"book.fill")
////                    .buttonStyle(.borderedProminent)
////                    
////                    .tint(Color.red)
//                    
//            }
            
            Spacer()
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework , isShowingDetailView: .constant(true) )
        
}
