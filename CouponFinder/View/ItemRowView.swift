//
//  ItemRowView.swift
//  CouponFinder
//
//  Created by Nishant Kumar on 2/19/25.
//

import SwiftUI

struct ItemRowView: View {
    let item: MenuItem
    
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text(item.restaurant)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("$\(item.basePrice, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundColor(.green)
            }
            
            Spacer()
            
            Text("\(item.coupons.count) coupons")
                .font(.caption)
                .foregroundColor(.blue)
        }
        .padding(.vertical, 5)
    }
}
