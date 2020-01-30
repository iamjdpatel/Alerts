//
//  CustomAlertView.swift
//  AlertDemo
//
//  Created by JD Patel on 30/01/20.
//  Copyright © 2020 JD. All rights reserved.
//

import SwiftUI

struct CustomAlertView: View {
    
    var width: CGFloat = 270
    var height: CGFloat = 120
    
    @Binding var showCustomAlert: Bool
    
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
                        .padding(.bottom, 5)
                    
                    Text("This is a Custom Alert.")
                        .font(.subheadline)
                        .padding(.bottom, 15)
                    
                    Divider()
                        .background(Color(UIColor.lightGray))
                    
                    Button(action: {
                        self.showCustomAlert.toggle()
                    }) {
                        Text("OK")
                            .font(.system(size: 18))
                            .frame(width: width, height: 45)
                    }
                    
                }
                
            }.frame(width: width, height: height)
            
        }
        
    }
    
}

struct CustomAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertView(showCustomAlert: .constant(false))
    }
}
