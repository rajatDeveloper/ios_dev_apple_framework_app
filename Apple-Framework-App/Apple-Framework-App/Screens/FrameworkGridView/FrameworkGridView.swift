//
//  FrameworkGridView.swift
//  Apple-Framework-App
//
//  Created by RAJAT DHIMAN on 18/07/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView{
            ScrollView(content: {
                LazyVGrid(columns: viewModel.coloums, content: {
                    //using foreach loop and displaying the data in Lazy grid view
                    ForEach(MockData.frameworks )
                    {
                        item in FrameWorkCardView(item: item).onTapGesture {
                            viewModel.selectedFramework = item ;
                        }
                    }
                    
                })
            })
            
          .navigationTitle("Framework ")
          .sheet(isPresented: $viewModel.isShowingDetailView, content: {
              FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework ,
                isShowingDetailView: $viewModel.isShowingDetailView
              )
          })
            
        }
        
       
    }
}



#Preview {
    FrameworkGridView()
}


