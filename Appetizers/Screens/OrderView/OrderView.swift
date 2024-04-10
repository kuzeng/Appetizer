//
//  OrderView.swift
//  Appetizers
//
//  Created by Kuiduan Zeng on 3/26/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button(action: {
                        print("order placed")
                    }, label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    })
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                .navigationTitle("🍟 Order")
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                            message: "You have no items in your order. \nPlease add an appetizer!")
                }
            }
        }
    }
}

#Preview {
    OrderView()
}
