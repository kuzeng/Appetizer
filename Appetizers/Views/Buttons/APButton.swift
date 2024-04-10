//
//  APButton.swift
//  Appetizers
//
//  Created by Kuiduan Zeng on 3/29/24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .fontWeight(.semibold)
            .font(.title3)
            .frame(width: 260, height: 50)
            .background(Color(.brandPrimary))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test Title")
}
