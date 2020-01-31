//
//  CustomTextfieldAlertView.swift
//  AlertDemo
//
//  Created by JD Patel on 31/01/20.
//  Copyright © 2020 JD. All rights reserved.
//

import SwiftUI

struct CustomTextfieldAlertView: View {
    
    var width: CGFloat = 270
    var height: CGFloat = 145
    
    @State private var name: String = ""
    
    @Binding var showCustomTextfieldAlert: Bool
    
    var body: some View {
        
        ZStack {
            
            Color(UIColor.black.withAlphaComponent(0.1))
            
            ZStack {
                
                VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark))
                    .frame(width: width, height: height)
                    .cornerRadius(15)
                
                VStack(spacing: 0) {
                    
                    Spacer()
                    
                    Text("Title")
                        .font(.system(size: 18))
                        .padding(.bottom, 8)
                    
                    TextField("Enter your name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: width - 30, height: 45)
                        .padding(.bottom, 8)
                    
                    Divider()
                    
                    HStack {
                        
                        Button(action: {
                            self.showCustomTextfieldAlert.toggle()
                        }) {
                            Text("Cancel")
                                .font(.system(size: 18))
                                .frame(width: width/2, height: 45)
                                .foregroundColor(.red)
                        }
                        
                        Divider()
                        
                        Button(action: {
                            self.showCustomTextfieldAlert.toggle()
                        }) {
                            Text("OK")
                                .font(.system(size: 18))
                                .frame(width: width/2, height: 45)
                        }
                        
                    }.frame(width: width, height: 45)
                    
                }
                
            }.frame(width: width, height: height)
            
        }
        
    }
    
}

struct CustomTextfieldAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextfieldAlertView(showCustomTextfieldAlert: .constant(false))
    }
}
