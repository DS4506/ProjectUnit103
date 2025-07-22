
//  ShoppingListView.swift
//  ProjectUnit103
//
//  Created by Willie Earl on 7/21/25.



import SwiftUI

struct ShoppingListView: View {
    
    @State var shoppingList: [String] = ["Eggs", "Apples", "Mango"]
    @State var newItem: String = ""
    
    var body: some View {
        // Allow the toolbar and title
        NavigationView {
            
            ZStack {
                Color.gray.opacity(0.1)
                    .ignoresSafeArea()
                // white Surface
                VStack {
                    Text("Shopping List")
                        .font(.largeTitle)
                        .foregroundStyle(.blue)
                        .padding()
                         
                    List {
                        //List of items
                        ForEach(shoppingList, id: \.self) { item in
                            Text(item)
                        }
                    }// List
                    .listStyle(PlainListStyle())
                    .scrollContentBackground(.hidden)
                    HStack {
                        TextField("Add new shopping item...", text: $newItem)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray,lineWidth: 1)
                                .opacity(0.2))
                            .padding()
                        
                        Button(action:{
                            addItem(newItem)
                            newItem = ""
                        }){
                            Image(systemName: "arrowshape.up.fill")
                            padding()
                                .background(Color.blue)
                                .foregroundStyle(Color.white)
                                .cornerRadius(30)
                        
                        }//Button
        
                    }//HStack
                    .padding()
                    
                }//VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .cornerRadius(20)
                .padding()
                
                
            }//ZStack
            .navigationBarTitle("Listify", displayMode: .inline)
            .toolbar {
                Menu{
                    Button("Sort A -> z"){
                         shoppingList.sort()
                        
                    }
                    Button("Reverse Order") {
                        //action
                    }
                } label: {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .imageScale(.large)
                    
                }
                .padding()
            }
        }
    }
    private func addItem(_ item: String) {
        if !item.isEmpty {
            shoppingList.append(item)
        }
        
    }
}

#Preview{
    ShoppingListView()
}







