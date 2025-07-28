//
// PostView.swift
// ProjectUnit103
//
// Created by willie Earl on 23/07/25.
//

import SwiftUI
import Combine

// MARK: -ObervableObject
// Use when you have shared data models that multiple views need to observe.
class PostModel: ObservableObject {
// @Published -> For properties that can change, and the UI will react to it.
@Published var likeCount: Int
@Published var caption: String

// Not Publish -> For properties that won't change after the object is created
let imageName: String
let postDate: String

init(caption: String, imageName: String, postDate: String, likeCount: Int = 0) {
self.caption = caption
self.imageName = imageName
self.postDate = postDate
self.likeCount = likeCount
}
}

struct PostView: View {

@State private var isLiked = false

@ObservedObject var post: PostModel


var body: some View {

VStack(alignment: .leading, spacing: 16){
// MARK: -Username
HStack {
Image(systemName: "person.circle")
.imageScale(.large)

Text("my.username")
}
//MARK: -Post UI
Image(post.imageName)
.resizable()
.aspectRatio(2/3, contentMode: .fill)
.frame(width: .infinity)

HStack {
LikeButton(isLiked: $isLiked)
Text("\(post.likeCount)")
.padding(.leading)
}

Text(post.caption)
.font(.headline)

Text(post.postDate)
}
.padding()
.background(Color.gray.opacity(0.1))
.cornerRadius(12)
.padding()
.onChange(of: isLiked) {
if isLiked {
post.likeCount += 1
} else {
post.likeCount = max(0, post.likeCount - 1)
}
}
}
}

struct LikeButton: View {
@Binding var isLiked: Bool

var body: some View {
Button(action: {
isLiked.toggle()
}) {
Image(systemName: isLiked ? "heart.fill" : "heart")
.foregroundColor(isLiked ? .red : .gray)
.imageScale(.large)
}
}
}


// MARK: - Preview
#Preview {

let newPost = PostModel(
caption: "👙☀️ Having good time! 🎶 #beach #vacation #something",
imageName: "post_photo", //The one you stored in your assets
postDate: "May 31"
)

PostView(post: newPost)
}
    
