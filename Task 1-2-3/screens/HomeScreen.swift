//
//  HomeScreen.swift
//  Task 1-2-3
//
//  Created by Ogabek Matyakubov on 29/11/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                
                // Live, Photo, Room
                VStack {
                    HStack {
                        Image("ogabekdev")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Text("What's on your mind?")
                            .font(.system(size: 17))
                    }
                    .frame(height: 80).frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 10).padding(.trailing, 10)
                    
                    HStack {}
                    .frame(height: 1).frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    
                    HStack {
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "video.fill").foregroundColor(.red)
                            Text("Live")
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "photo.on.rectangle.angled").foregroundColor(.green)
                            Text("Photo")
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "video.fill").foregroundColor(.purple)
                            Text("Room")
                        }
                        
                        Spacer()
                        
                    }
                    .frame(height: 40)
                    
                }
                
                // Create Room
                VStack {
                    HStack {}
                        .frame(height: 5).frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                CreateRoomItem()
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                            }
                        }
                    }
                    .frame(height: 100).frame(maxWidth: .infinity)
                    .padding(.leading, 10)
                }
                
                // Create Story
                VStack {
                    HStack {}
                        .frame(height: 5).frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                }
                
                // Post Items
                
                VStack {
                    HStack {}
                        .frame(height: 5).frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    
                    PostItem(image: "post1")
                    ItemWithTwoImage()
                    PostItem(image: "post2")
                    ItemNewProfile()
                    PostItem(image: "post1")
                    ItemWithTwoImage()
                    ItemWithTwoImage()
                    PostItem(image: "post2")
                    ItemNewProfile()
                }
                
            }
            .navigationBarItems(
                leading: Text("facebook")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(.blue),
                trailing: HStack{
                    ZStack {
                        Circle()
                            .fill(Color.gray.opacity(0.8))
                            .frame(width: 40, height: 40)
                        Image(systemName: "magnifyingglass")
                    }
                    
                    ZStack {
                        Circle()
                            .fill(Color.gray.opacity(0.8))
                            .frame(width: 40, height: 40)
                        Image(systemName: "plus.message.fill")
                    }
                    
                }
            )
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
