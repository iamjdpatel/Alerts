//
//  ContentView.swift
//  AlertDemo
//
//  Created by JD Patel on 30/01/20.
//  Copyright © 2020 JD. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var showNativeAlert = false
    @State var showCustomAlert = false
    @State var showNativeTextfieldAlert = false
    @State var showCustomTextfieldAlert = false
    
    @State var scale: CGFloat = 1
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                VStack(spacing: 60) {
                    
                    Button(action: {
                        self.showNativeAlert.toggle()
                    }) {
                        Text("Native Alert")
                    }
                    
                    Button(action: {
                        self.showCustomAlert.toggle()
                        
                        withAnimation(.easeIn(duration: 0.3)) {
                            self.scale = 1.1
                            withAnimation(.easeIn(duration: 0.2)) {
                                self.scale = 1
                            }
                        }
                        
                    }) {
                        Text("Custom Alert")
                    }
                    
                    Button(action: {
                        print("clicked")
                    }) {
                        Text("Textfield Native Alert")
                    }
                    
                    Button(action: {
                        self.showCustomTextfieldAlert.toggle()
                        
                        withAnimation(.easeIn(duration: 0.3)) {
                            self.scale = 1.1
                            withAnimation(.easeIn(duration: 0.2)) {
                                self.scale = 1
                            }
                        }
                    }) {
                        Text("Textfield Custom Alert")
                    }
                    
                }
                
                if showCustomAlert {
                    
                    CustomAlertView(showCustomAlert: $showCustomAlert)
                        .scaleEffect(scale)
                    
                }
                
                if showCustomTextfieldAlert {
                    
                    CustomTextfieldAlertView(showCustomTextfieldAlert: $showCustomTextfieldAlert)
                        .scaleEffect(scale)
                    
                }
                
                
            }
        
        .alert(isPresented: $showNativeAlert) {
            Alert(title: Text("Title"), message: Text("This is a Native Alert."), dismissButton: .default(Text("OK")))
        }
                
            .navigationBarTitle(Text("Alerts"), displayMode: .inline)
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().colorScheme(.dark)
    }
}
