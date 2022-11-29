//
//  ItemNewProfilw.swift
//  Task 1-2-3
//
//  Created by Ogabek Matyakubov on 29/11/22.
//

import SwiftUI

struct ItemNewProfile: View {
    var image = "ogabekdev"
    
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
                    HStack {
                        Text("Ogabek")
                            .fontWeight(.bold)
                        Text("uploaded his profile photo")
                    }
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
            ZStack {
                
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.size.width - 10, height: UIScreen.main.bounds.size.width - 10)
                    .cornerRadius(UIScreen.main.bounds.size.width)
                    .overlay(Circle().stroke(Color.white, lineWidth: 15))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                
                
            }
            
            // Like, Love, Counts for comment and share
            HStack(spacing: 5) {
                Image(systemName: "hand.thumbsup.circle.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.blue)
                
                Text("1K")
                Spacer()
                
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

struct ItemNewProfile_Previews: PreviewProvider {
    static var previews: some View {
        ItemNewProfile()
    }
}
