//
//  ContentView.swift
//  Edit Stack Screen
//
//  Created by rgs on 16/11/21.
//

import SwiftUI

class TextFieldManager: ObservableObject {
    
    let characterLimit = 25
    
    @Published var userInput = "" {
        
        didSet {
            
            if userInput.count > characterLimit {
                userInput = String(userInput.prefix(characterLimit))
            }
        }
    }
    
}



struct ContentView: View {
    
    @ObservedObject var textFieldManager = TextFieldManager()
    @State private var text = ""
    
    var body: some View {
        
        
        NavigationView {
            
            VStack {
                
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .fill(Color(UIColor.systemTeal))
                        .frame(height: 66)
                    CustomTextEditor.init(placeholder: "Stack name", text: $textFieldManager.userInput)
                        .multilineTextAlignment(TextAlignment.leading)
                        .frame(height: 66)
                }
                
                
                
                
                ScrollView(.horizontal) {
                    HStack {
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                        }
                        
                        Button("#geography") {
                            print("Pressed")
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        
                        
                        Button("#history") {
                            print("Pressed")
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        
                    }
                    .padding()
                }
                
                
                ScrollView {
                    VStack {
                        Button("What is the capital of Italy?") {
                            
                        }
                        .padding()
                        .font(.system(size: 35.0, weight: .bold,design: .rounded))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .multilineTextAlignment(.center)
                        .cornerRadius(15)
                        .navigationTitle("Edit Stack")
                        .navigationBarTitleDisplayMode(.inline)
                        
                        Button("What is the capital of Italy?") {
                            
                        }
                        .padding()
                        .font(.system(size: 35.0, weight: .bold,design: .rounded))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .multilineTextAlignment(.center)
                        .cornerRadius(15)
                        .navigationTitle("Edit Stack")
                        
                        Button("What is the capital of Italy?") {
                            
                        }
                        .padding()
                        .font(.system(size: 35.0, weight: .bold,design: .rounded))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .multilineTextAlignment(.center)
                        .cornerRadius(15)
                        .navigationTitle("Edit Stack")
                        
                        Button("What is the capital of Italy?") {
                            
                        }
                        .padding()
                        .font(.system(size: 35.0, weight: .bold,design: .rounded))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .multilineTextAlignment(.center)
                        .cornerRadius(15)
                        .navigationTitle("Edit Stack")
                        Button("What is the capital of Italy?") {
                            
                        }
                        .padding()
                        .font(.system(size: 35.0, weight: .bold,design: .rounded))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .multilineTextAlignment(.center)
                        .cornerRadius(15)
                        .navigationTitle("Edit Stack")
                    }
                }
                
            }
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigation) {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                    }
                    
                }
                
                ToolbarItem(placement: ToolbarItemPlacement.automatic) {
                    
                    Button("Done") {
                        
                    }
                }
            }
        }
        
    }
}

struct CustomTextEditor: View {
    
    let placeholder: String
    @Binding var text: String
    let internalPadding: CGFloat = 5
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color.primary.opacity(0.25))
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .accentColor(.green)
                    .padding(EdgeInsets(top: 7, leading: 4, bottom: 0, trailing: 0))
                    .padding(internalPadding)
                
            }
            TextEditor(text: $text)
                .font(.system(size: 24.0, weight: .bold,design: .rounded))
                .lineLimit(1)
                .padding(internalPadding)
            
        }.onAppear() {
            UITextView.appearance().backgroundColor = UIColor(red: 204/255, green: 229/255, blue: 255/255, alpha: 0)
        }.onDisappear() {
            UITextView.appearance().backgroundColor = UIColor(red: 204/255, green: 229/255, blue: 255/255, alpha: 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
