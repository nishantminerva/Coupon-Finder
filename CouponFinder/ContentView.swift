//
//  ContentView.swift
//  CouponFinder
//
//  Created by Nishant Kumar on 2/19/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CouponViewModel()
    @State private var searchText = ""
    
    var filteredItems: [MenuItem] {
        if searchText.isEmpty {
            return viewModel.menuItems
        }
        return viewModel.menuItems.filter { item in
            item.name.lowercased().contains(searchText.lowercased()) ||
            item.restaurant.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredItems) { item in
                NavigationLink(destination: ItemDetailView(item: item)) {
                    ItemRowView(item: item)
                }
            }
            .navigationTitle("Coupon Finder")
            .searchable(text: $searchText, prompt: "Search items or restaurants")
        }
    }
}

#Preview {
    ContentView()
}
