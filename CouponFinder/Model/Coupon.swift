//
//  Coupon.swift
//  CouponFinder
//
//  Created by Nishant Kumar on 2/19/25.
//

import Foundation

struct Coupon: Identifiable {
    let id = UUID()
    let code: String
    let discount: String
    let expiryDate: Date
    let isVerified: Bool
}
