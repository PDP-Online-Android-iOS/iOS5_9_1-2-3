//
//  PostItem.swift
//  Task 1-2-3
//
//  Created by Ogabek Matyakubov on 29/11/22.
//

import SwiftUI

struct PostItem: View {
    
    var image = "post1"
    
    var body: some View {
        VStack {
            // Header
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("ogabekdev")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                    ZStack {
                        Circle()
                            .frame(width: 22, height: 22)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: 16, height: 16)
                            .foregroundColor(.green)
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Ogabek")
                        .fontWeight(.bold)
                    HStack {
                        Text("13m")
                        Image(systemName: "globe.central.south.asia.fill")
                            .resizable()
                            .frame(width: 18, height: 18)
                    }
                }
                
                Spacer()
                
                Image(systemName: "ellipsis")
                
            }
            .padding(.leading, 10).padding(.trailing, 10).padding(.top, 10)
            
            // Post Media
            Image(image)
                .resizable()
                .scaledToFit()
            
            // Like, Love, Counts for comment and share
            HStack(spacing: 5) {
                HStack(spacing: -5) {
                    Image(systemName: "hand.thumbsup.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.blue)
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.red)
                }
                
                Text("7.7K")
                Spacer()
                Text("234 Comments")
                Text("67 Shares")
                
            }
            .padding(.leading, 0.5).padding(.trailing, 10).padding(.top, 10)
            
            HStack {}
                .frame(height: 0.5).frame(maxWidth: .infinity)
                .background(.gray.opacity(0.5))
                .padding(.top, 5)
            
            HStack {
                Spacer()
                
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "message")
                    Text("Comment")
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                }
                
                Spacer()
            }
            .frame(height: 40)
            
            HStack {}
                .frame(height: 5).frame(maxWidth: .infinity)
                .background(.gray.opacity(0.5))
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
