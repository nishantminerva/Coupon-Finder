//
//  MenuItem.swift
//  CouponFinder
//
//  Created by Nishant Kumar on 2/19/25.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let restaurant: String
    let basePrice: Double
    let image: String
    var coupons: [Coupon]
}
