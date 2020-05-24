//
//  ContentView.swift
//  swiftui-custom-view-modifier-example
//
//  Created by MAC on 24/5/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct DeveloperBottomView:View {
    
    var body: some View{
        
        VStack(alignment:.center){
            Text("Developed by Arif Hossen").fontWeight(.bold).foregroundColor(.green)
            Text("Senior iOS Developer at Graaho").foregroundColor(.blue)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
    }
}



struct CustomTextViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .font(.headline)
            .padding()
            .foregroundColor(.black)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 2)
                
        )
            .foregroundColor(.gray)
        
    }
}

extension View {
    func CustomTextViewProperty() -> some View {
        return self.modifier(CustomTextViewModifier())
    }
}


struct ContentView: View {
    var body: some View {
        VStack{
            
            Image("swiftui-logo")
            
            Text("Custom Text View Modifier Example")
                .foregroundColor(.green)
                .font(.system(size: 20))
            
            Spacer().frame(height:30)
            
            Section{
                
                Text("1. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,")
                    .CustomTextViewProperty()
                
                Spacer().frame(height:20)
                
                Text("2. Contrary to popular belief, Lorem Ipsum is not simply random text")
                    .CustomTextViewProperty()
                
                Spacer().frame(height:20)
                
                Text("3. Text title text title text title")
                    .CustomTextViewProperty()
                
                Spacer().frame(height:20)
                
                Text("4. There are many variations of passages")
                    .CustomTextViewProperty()
            }
            
            Spacer()
            DeveloperBottomView()
        }
        .padding(10)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
