//
//  RoomItems.swift
//  Task 1-2-3
//
//  Created by Ogabek Matyakubov on 29/11/22.
//

import SwiftUI

struct RoomItem: View {
    
    var isOnline = true
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("ogabekdev")
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(35)
            if isOnline {
                ZStack {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Circle()
                        .frame(width: 14, height: 14)
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct RoomItems_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem()
    }
}
