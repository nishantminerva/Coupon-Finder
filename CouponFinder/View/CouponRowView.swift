//
//  CouponRowView.swift
//  CouponFinder
//
//  Created by Nishant Kumar on 2/19/25.
//

import SwiftUI

struct CouponRowView: View {
    let coupon: Coupon
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(coupon.discount)
                    .font(.headline)
                Text("Expires: \(coupon.expiryDate, style: .date)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            if coupon.isVerified {
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.green)
            }
        }
        .padding(.vertical, 5)
    }
}
