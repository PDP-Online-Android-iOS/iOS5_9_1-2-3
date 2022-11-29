//
//  CreateRoomItem.swift
//  Task 1-2-3
//
//  Created by Ogabek Matyakubov on 29/11/22.
//

import SwiftUI

struct CreateRoomItem: View {
    var body: some View {
        HStack {
            Image(systemName: "video.fill")
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .padding(.leading, 5)
                .font(.system(size: 20, weight: .ultraLight))
            
            Text("Create\nRoom")
                .font(.system(size: 17))
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.trailing, 20)
        }
        .frame(height: 60)
        .overlay(RoundedRectangle(cornerRadius: 35).stroke(.blue, lineWidth: 1))
    }
}

struct CreateRoomItem_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoomItem()
    }
}
