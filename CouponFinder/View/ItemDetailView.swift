//
//  ItemDetailView.swift
//  CouponFinder
//
//  Created by Nishant Kumar on 2/19/25.
//

import SwiftUI

struct ItemDetailView: View {
    let item: MenuItem
    @State private var showingCouponCode = false
    @State private var selectedCoupon: Coupon?
    
    var body: some View {
        List {
            Section(header: Text("Item Details")) {
                VStack(alignment: .leading, spacing: 10) {
                    Text(item.name)
                        .font(.title2)
                    Text(item.restaurant)
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text("Base Price: $\(item.basePrice, specifier: "%.2f")")
                        .font(.subheadline)
                }
                .padding(.vertical, 5)
            }
            
            Section(header: Text("Available Coupons")) {
                ForEach(item.coupons) { coupon in
                    CouponRowView(coupon: coupon)
                        .onTapGesture {
                            selectedCoupon = coupon
                            showingCouponCode = true
                        }
                }
            }
        }
        .navigationTitle("Item Details")
        .alert("Coupon Code", isPresented: $showingCouponCode, presenting: selectedCoupon) { coupon in
            Button("Copy Code") {
                UIPasteboard.general.string = coupon.code
            }
            Button("Close", role: .cancel) {}
        } message: { coupon in
            Text("Code: \(coupon.code)\nDiscount: \(coupon.discount)")
        }
    }
}
