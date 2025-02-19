//
//  CouponViewModel.swift
//  CouponFinder
//
//  Created by Nishant Kumar on 2/19/25.
//

import Foundation

class CouponViewModel: ObservableObject {
    @Published var menuItems: [MenuItem] = [
        MenuItem(
            name: "Large Pepperoni Pizza",
            restaurant: "Papa Johns",
            basePrice: 14.99,
            image: "ticket.fill",
            coupons: [
                Coupon(code: "PIZZA25", discount: "25% off", expiryDate: Date().addingTimeInterval(7*24*60*60), isVerified: true),
                Coupon(code: "SAVE10PJ", discount: "$10 off", expiryDate: Date().addingTimeInterval(14*24*60*60), isVerified: true)
            ]
        ),
        MenuItem(
            name: "Pumpkin Spice Latte",
            restaurant: "Starbucks",
            basePrice: 5.99,
            image: "ticket.fill",
            coupons: [
                Coupon(code: "FALL2025", discount: "15% off", expiryDate: Date().addingTimeInterval(30*24*60*60), isVerified: true),
                Coupon(code: "BOGO50", discount: "Buy one get one 50% off", expiryDate: Date().addingTimeInterval(5*24*60*60), isVerified: false)
            ]
        ),
        MenuItem(
            name: "Burrito Bowl",
            restaurant: "Chipotle",
            basePrice: 9.99,
            image: "ticket.fill",
            coupons: [
                Coupon(code: "CHIPFRESH", discount: "$3 off", expiryDate: Date().addingTimeInterval(10*24*60*60), isVerified: true),
                Coupon(code: "REWARDS20", discount: "20% off", expiryDate: Date().addingTimeInterval(3*24*60*60), isVerified: true)
            ]
        )
    ]
}
